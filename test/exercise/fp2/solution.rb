module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for item in self do
          yield item
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        res = MyArray.new

        for item in self
          res.push(yield item)
        end

        res
      end

      # Написать свою функцию my_compact
      def my_compact
        res = MyArray.new

        for item in self
          if not item.nil?
            res << item
          end
        end

        res
      end

      # Написать свою функцию my_reduce
      def my_reduce(init = nil)
        acc = self[0]
        for i in 1..(length - 1)
          acc = yield acc, self[i]
        end
        init ? yield(init, acc) : acc
      end
    end
  end
end
