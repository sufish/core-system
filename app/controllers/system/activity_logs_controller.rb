class System::ActivityLogsController < ApplicationController
  authorize_resource class: 'System::ActivityLog'

  def index
    @q = System::ActivityLog.search(params[:q])
    @system_activity_logs = @q.result.order(id: :desc).paginate(page: @page, per_page: @limit)
  end
end
