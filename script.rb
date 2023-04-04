require "pry-byebug"

def bubble_sort(arrayOfNumbers)

  n = arrayOfNumbers.length - 1
  swapped = true
  until swapped == false

    #the number of check we must do is equal to the length-1 because
    #we start checking the [first] with the [first+1] element
    for i in 0...arrayOfNumbers.length - 1
      if arrayOfNumbers[i] > arrayOfNumbers[i + 1]
        temp = arrayOfNumbers[i]
        arrayOfNumbers[i] = arrayOfNumbers[i + 1]
        arrayOfNumbers[i + 1] = temp
      end
    end

    n = n - 1
    if n == 0
      swapped = false
    end

  end

  arrayOfNumbers
end

p bubble_sort([4, 3, 78, 2, 0, 2])
