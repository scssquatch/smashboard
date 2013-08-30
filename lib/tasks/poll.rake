namespace :poll do
  desc "Get updates from pivotal"
  task :pivotal => :environment do
    PivotalTracker::Client.use_ssl = true
    Metric.where(name: "pivotal", active: true).each do |metric|
      PivotalTracker::Client.token = metric.token
      project = PivotalTracker::Project.find(metric.metric_project_id)
      stories = PivotalTracker::Activity.all(project, occurred_since_date: 1.years.ago, limit: 100)
      stories.reverse.each do |story|
        timestamp = story.occurred_at.to_time.getlocal.strftime("%I:%M %p")
        story = { project: project.name, timestamp: timestamp, pivotal: story.description }.to_json
      end
    end
  end
end
