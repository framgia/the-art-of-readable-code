class SynchronizeXXXData
  attr_reader :is_update_ready, :is_synch_completed, :is_cache_enabled

  def initialize is_update_ready, is_synch_completed, is_cache_enabled
    @is_update_ready = is_update_ready
    @is_synch_completed = is_synch_completed
    @is_cache_enabled = is_cache_enabled
  end

  def update_database is_force_update
    data_update = ["Ruby", "PHP", "iOS", "Android"]
    return unless is_update_ready
    return update_cache unless is_force_update
    update_main_db(data_update) if is_synch_completed
    update_backup_db
  end

  private
  def update_backup_db
    p "update backup db"
  end

  def update_main_db data_update
    if data_update.any?
      p "parse data to object model"
      p "check validation"
      p "update main database"
    end
  end

  def update_cache
    if !is_cache_enabled
      p "output message errors"
    else
      p "disable cache"
      p "update cache"
      p "output message update success"      
    end
  end

end

test = SynchronizeXXXData.new true, false, true
test.update_database true
