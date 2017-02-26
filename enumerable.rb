module Enumerable

  def my_each(&block)
      for val in self
        block.call(val)
      end
  end

  def my_each_with_index(&block)
    index = 0
    for val in self
      block.call(index, val)
      index += 1
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

    puts "input"
    return result

  end

  def my_count(*input)

    result = 0

    if(input.empty? && !block_given?)
      if(self.class.to_s == "Range")
        self.my_each { |a| result += 1 }
      else
        result = self.length
      end
      return result
    end

    self.my_each { |val|
      if(block_given? && yield(val))
        result += 1
      else
        if(input != nil && val == input[0])
          result += 1
        end
      end
    }

    return result
  end

  def my_map(&block)

    result = Array.new

    self.my_each { |val|
      result.push(block.call(val))
    }

    return result

  end

  def my_inject (&block)

    is_hash = self.class.to_s == "Hash"

    if(is_hash)
      values = self.values
    end

    result = nil

    self.my_each_with_index { |index, val|
      if(is_hash)
        if(index == 0)
          result = values[index]
        else
          result = block.call(result, values[index])
        end
      else
        if(index == 0)
          result = val
        else
          result = block.call(result, val)
        end
      end
    }

    return result

  end

  def Enumerable.multiply_els(array)
    return array.my_inject { |sum, val| sum *= val }
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
