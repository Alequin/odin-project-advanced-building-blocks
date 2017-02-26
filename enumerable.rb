module Enumerable

  def my_each(&block)
    for val in 0..(self.length-1)
      block.call(self[val])
    end
  end

  def my_each_with_index(&block)
    for index in 0..(self.length-1)
      block.call(index, self[val])
    end
  end

  def my_select(&block)

    result = Array.new

    self.my_each { |val|
      if(block.call(val))
        result.push(val)
      end
    }

    return result

  end

  def my_all?(&block)

    self.my_each { |val|
      if(block != nil && !block.call(val))
        return false
      elsif(!val)
        return false
      end
    }

    return true

  end

  def my_any?(&block)

    self.my_each { |val|
      if(block != nil && block.call(val))
        return true
      elsif(val)
        return true
      end
    }

    return false

  end

  def my_none?(&block)
    return !(self.my_all?(&block))
  end

  def my_count(input)

    result = 0

    self.my_each { |val|
      if(val == input)
        result += 1
      end
    }

    return result

  end

  def my_count(&block)

    if(block == nil)
      return self.length
    end

    result = 0

    self.my_each { |val|
      if(block.call(val))
        result += 1
      end
    }

    return result
  end

  def my_map(&block)

    result = Array.new

    self.my_each { |val|
      if(block.call(val))
        result.push(val)
      end
    }

    return result

  end

  def my_inject(&block)

    result = nil

    self.my_each_with_index { |index, val|
      if(index == 0)
        result = val
      else
        result = block.call(result, val)
      end
    }

    return result

  end

end


#
#
#
#
#
#
#
#
#
#
#

#
#
#
#
#
#
#
#
#

#
