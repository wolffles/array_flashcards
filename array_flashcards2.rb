#Array flashcards
#run by ./ruby/array_flashcards.rb 2
def array_flash(n)
hash = Hash[
'&','name: Set Intersection---Returns a new array
containing elements common to the two arrays, with no duplicates.

 [ 1, 1, 3, 5 ] _____ [ 1, 2, 3 ]   #=> [ 1, 3 ]' ,
'*','name: Repetition---With a String argument, equivalent to
self.join(str). Otherwise, returns a new array
built by concatenating the _int_ copies of self.
[ 1, 2, 3 ] _____ 3    #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
[ 1, 2, 3 ] _____","  #=> "1,2,3" ',
'+','name: Concatenation---Returns a new array built by concatenating the
two arrays together to produce a third array.',
'-','Array Difference---Returns a new array that is a copy of
the original array, removing any items that also appear in
other_ary.
 [ 1, 1, 2, 2, 3, 3, 4, 5 ]____[ 1, 2, 4 ]  #=>  [ 3, 3, 5 ]',
'<=>','Comparison---Returns an integer (-1, 0,
or +1) if this array is less than, equal to, or greater than
other_ary.
[ "a", "a", "c" ]  _____[ "a", "b", "c" ]   #=> -1
   [ 1, 2, 3, 4, 5, 6 ]______[ 1, 2 ]   #=> +1',
 'any?','Passes each element of the collection to the given block. The method
returns true if the block ever returns a value other
than false or nil. If the block is not
given, Ruby adds an implicit block of {|obj| obj} (that
is any? will return true if at least one
of the collection members is not false or
nil.
%w{ant bear cat}._____ {|word| word.length >= 3}   #=> true
   %w{ant bear cat}._____ {|word| word.length >= 4}   #=> true
   [ nil, true, 99 ]._____                            #=> true',
'assoc','Searches through an array whose elements are also arrays
comparing _obj_ with the first element of each contained array
using obj.==.
Returns the first contained array that matches (that
is, the first associated array),
or nil if no match is found.
 s1 = [ "colors", "red", "blue", "green" ]
 s2 = [ "letters", "a", "b", "c" ]
 s3 = "foo"
   a  = [ s1, s2, s3 ]
   a._______  #=> [ "letters", "a", "b", "c" ]
   a._______      #=> nil(foo is not an array)',
'clear','Removes all elements from self
a = [ "a", "b", "c", "d", "e" ] 
______ #=> [ ]',
'combination','When invoked with a block, yields all combinations of length n
of elements from ary and then returns ary itself.
The implementation makes no guarantees about the order in which
the combinations are yielded.

If no block is given, an enumerator is returned instead.
   a = [1, 2, 3, 4]
   a.______(1).to_a  #=> [[1],[2],[3],[4]]
   a.______(2).to_a  #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
   a.______(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
   a.______(4).to_a  #=> [[1,2,3,4]]
   a.______(0).to_a  #=> [[]] # one combination of length 0
   a.______(5).to_a  #=> []   # no combinations of length 5',
'compact','Returns a copy of self with all nil elements removed.
 [ "a", nil, "b", nil, "c", nil ]._________ #=> [ "a", "b", "c" ]',
'concat','Appends the elements of other_ary to SELF.
[ "a", "b" ]._________( ["c", "d"] ) #=> [ "a", "b", "c", "d" ]',
'','Returns the number of elements.  If an argument is given, counts
the number of elements which equals to obj.  If a block is
given, counts the number of elements yielding a true value.
 	ary = [1, 2, 4, 2]
   ary._______             #=> 4
   ary._______(2)          #=> 2
   ary._______{|x|x%2==0}  #=> 3',
'cycle','Calls block for each element repeatedly _n_ times or
forever if none or nil is given.  If a non-positive number is
given or the array is empty, does nothing.  Returns nil if the
loop has finished without getting interrupted.

If no block is given, an enumerator is returned instead.


   a = ["a", "b", "c"]
   a.______ {|x| puts x }  # print, a, b, c, a, b, c,.. forever.
   a.______(2) {|x| puts x }  # print, a, b, c, a, b, c.',
'delete','
Deletes items from self that are equal to obj.
If any items are found, returns obj.   If
the item is not found, returns nil. If the optional
code block is given, returns the result of block if the item
is not found.  (To remove nil elements and
get an informative return value, use #compact!)
a = [ "a", "b", "b", "b", "c" ]
   a.______("b")                   #=> "b"
   a                               #=> ["a", "c"]
   a.______("z")                   #=> nil
   a.______("z") { "not found" }   #=> "not found"',
'delete_at','Deletes the element at the specified index, returning that element,
or nil if the index is out of range. See also
Array#slice!
a = %w( ant bat cat dog )
   a._______(2)    #=> "cat"
   a                 #=> ["ant", "bat", "dog"]
   a._______(99)   #=> nil',
'_____','Deletes every element of self for which block evaluates
to true.
The array is changed instantly every time the block is called and
not after the iteration is over.
See also Array#reject!

If no block is given, an enumerator is returned instead.

   a = [ "a", "b", "c" ]
   a._____ {|x| x >= "b" }   #=> ["a"]',
 'dig','Retrieves the value object corresponding to the each key objects 
 repeatedly.
 h = { foo: {bar: {baz: 1}}}
h.________(:foo, :bar, :baz)           #=> 1
h.________(:foo, :zot)                 #=> nil',
 'drop','removes first n elements from ary and returns the rest of
the elements in an array.
   a = [1, 2, 3, 4, 5, 0]
   a.______(3)  #=> [4, 5, 0]',
 'drop_while','removes first elements until the statement is false then returns
 an array with the remaining.

If no block is given, an enumerator is returned instead.

   a = [1, 2, 3, 4, 5, 0]
   a.drop_while {|i| i < 3 }   #=> [3, 4, 5, 0]',
 'each','passes block once for each element in self, passing that
element as a parameter.

If no block is given, an enumerator is returned instead.

   a = [ "a", "b", "c" ]
   a.______{|x| print x, " -- " } #=> a -- b -- c --',
 'each_index','passes the index of the element
instead of the element itself.

If no block is given, an enumerator is returned instead.


   a = [ "a", "b", "c" ]
   a.________ {|x| print x, " -- " } #=> 0 -- 1 -- 2 --',
 'empty?','
Returns true if self contains no elements.

   [].empty?   #=> true',
 'fetch','Tries to return the element at position index. If the index
lies outside the array, the first form throws an
IndexError exception, the second form returns
default, and the third form returns the value of invoking
the block, passing in the index. Negative values of index
count from the end of the array.

   a = [ 11, 22, 33, 44 ]
   a.______(1)               #=> 22
   a.______(-1)              #=> 44
   a.______(4, "cat")        #=> "cat"
   a.______(4) { |i| i*i }   #=> 16',
'fill','The first three forms set the selected elements of self (which
may be the entire array) to obj. A start of
nil is equivalent to zero. A length of
nil is equivalent to self.length. The last three
forms fill the array with the value of the block. The block is
passed the absolute index of each element to be filled.
Negative values of start count from the end of the array.

   a = [ "a", "b", "c", "d" ]
   a._____("x")              #=> ["x", "x", "x", "x"]
   a._____("z", 2, 2)        #=> ["x", "x", "z", "z"]
   a._____("y", 0..1)        #=> ["y", "y", "z", "z"]
   a._____ {|i| i*i}         #=> [0, 1, 4, 9]
   a._____(-2) {|i| i*i*i}   #=> [0, 1, 8, 27]',
 ['index','find_index'],'Returns the index of the first object in self such that the object is
== to obj. If a block is given instead of an
argument, returns index of first object for which block is true.
Returns nil if no match is found.
See also Array#rindex.

If neither block nor argument is given, an enumerator is returned instead.

   a = [ "a", "b", "c" ]
   a.index("b")        #=> 1
   a.index("z")        #=> nil
   a.index{|x|x=="b"}  #=> 1',
 'flatten','Returns a new array that is a one-dimensional _______ of this
array (recursively). That is, for every element that is an array,
extract its elements into the new array.  If the optional
level argument determines the level of recursion to _______.

   s = [ 1, 2, 3 ]           #=> [1, 2, 3]
   t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
   a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
   a._______                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   a = [ 1, 2, [3, [4, 5] ] ]
   a._______(1)              #=> [1, 2, 3, [4, 5]]',
 'frozen?','Returns the freeze status of obj.

   a = [ "a", "b", "c" ]
   a.freeze    #=> ["a", "b", "c"]
   a.frozen?   #=> true',
 'include?','Returns true if the given object is present in
self (that is, if any object == anObject),
false otherwise.

   a = [ "a", "b", "c" ]
   a._______("b")   #=> true
   a._______("z")   #=> false',
 'insert','adds the given values before the element with the given index
(which may be negative).

   a = %w{ a b c d }
   a._______(2, 99)         #=> ["a", "b", 99, "c", "d"]
   a._______(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"] ',
 "inspect","Creates a string representation of self. like puts but as a method",
 "join","Returns a string created by converting each element of the array to
a string, separated by sep.

   [ 'a', 'b', 'c' ].______        #=> 'abc'
   [ 'a', 'b', 'c' ].______('-')   #=> 'a-b-c' ",
 "keep_if","Deletes every element of self for which block evaluates
to false.
See also Array#select!

If no block is given, an enumerator is returned instead.

   a = %w{ a b c d e f }
   a._______ {|v| v =~ /[aeiou]/}   #=> ['a', 'e']",
 "last","Returns the last element(s) of self. If the array is empty,
the first form returns nil.

  a = [ 'w', 'x', 'y', 'z' ]
     a.______     #=> 'z'
     a.______(2)  #=> ['y', 'z']",
  ["collect!","map!"]," Invokes the block once for each element of self, replacing the
element with the value returned by _block_.

If no block is given, an enumerator is returned instead.

   a = [ 'a', 'b', 'c', 'd' ]
   a.______ {|x| x + '!' }
   a   #=>  [ 'a!', 'b!', 'c!', 'd!' ] ",
 "permutation","When invoked with a block, yield all permutations of length n
of the elements of ary, then return the array itself.
If n is not specified, yield all permutations of all elements.
The implementation makes no guarantees about the order in which
the permutations are yielded.

If no block is given, an enumerator is returned instead.

Examples:

   a = [1, 2, 3]
   a._______.to_a     #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
   a._______(1).to_a  #=> [[1],[2],[3]]
   a._______(2).to_a  #=> [[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]
   a._______(3).to_a  #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
   a._______(0).to_a  #=> [[]] # one _______ of length 0
   a._______(4).to_a  #=> []   # no _______s of length 4",
 "place"," Places values before or after another object (by value) in
an array. This is used in tandem with the before and after
methods of the {Insertion} class.

example _______ an item before another
  [1, 2, 3].place(4).before(3) # => [1, 2, 4, 3]
example _______ an item after another
  [:a, :b, :c].place(:x).after(:a) # => [:a, :x, :b, :c]
param [Array] values value to insert
return [Insertion] an insertion object to",
 "pop","Removes the last element from self and returns it, or
nil if the array is empty.

If a number _n_ is given, returns an array of the last n elements
(or less) just like array.slice!(-n, n) does.

   a = [ 'a', 'b', 'c', 'd' ]
   a.______     #=> 'd'
   a.______(2)  #=> ['b', 'c']
   a         #=> ['a'] ",
 "product","Returns an array of all combinations of elements from all arrays.
The length of the returned array is the product of the length
of self and the argument arrays.
If given a block, product will yield all combinations
and return self instead.


   [1,2,3].______([4,5])     #=> [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
   [1,2].______([1,2])       #=> [[1,1],[1,2],[2,1],[2,2]]
   [1,2].______([3,4],[5,6]) #=> [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                              #     [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
   [1,2].______()            #=> [[1],[2]]
   [1,2].______([])          #=> [] ",
 "rassoc"," Searches through the array whose elements are also arrays. Compares
_obj_ with the second element of each contained array using
==. Returns the first contained array that matches.
 a = [ [ 1, 'one'], [2, 'two'], [3, 'three'], ['ii', 'two'] ]
   a.rassoc('two')    #=> [2, 'two']
   a.rassoc('four')   #=> nil ",
  ["reject","delete_if"], "Returns a new array containing the items in self
for which the block is not true.
If no block is given, an enumerator is returned instead.",
 "repeated_combination","When invoked with a block, yields all repeated combinations of
length n of elements from ary and then returns
ary itself.
The implementation makes no guarantees about the order in which
the ______________ are yielded.

If no block is given, an enumerator is returned instead.

Examples:

   a = [1, 2, 3]
   a.___________(1).to_a  #=> [[1], [2], [3]]
   a.___________(2).to_a  #=> [[1,1],[1,2],[1,3],[2,2],[2,3],[3,3]]
   a.___________(3).to_a  #=> [[1,1,1],[1,1,2],[1,1,3],[1,2,2],[1,2,3],
                                   #    [1,3,3],[2,2,2],[2,2,3],[2,3,3],[3,3,3]]
   a.___________(4).to_a  #=> [[1,1,1,1],[1,1,1,2],[1,1,1,3],[1,1,2,2],[1,1,2,3],
                                   #    [1,1,3,3],[1,2,2,2],[1,2,2,3],[1,2,3,3],[1,3,3,3],
                                   #    [2,2,2,2],[2,2,2,3],[2,2,3,3],[2,3,3,3],[3,3,3,3]]
   a.___________(0).to_a  #=> [[]] # one ________ of length 0",
 "repeated_permutation","When invoked with a block, yield all repeated permutations of length
n of the elements of ary, then return the array itself.
The implementation makes no guarantees about the order in which
the ___________are yielded.

If no block is given, an enumerator is returned instead.

Examples:

   a = [1, 2]
   a._______(1).to_a  #=> [[1], [2]]
   a._______(2).to_a  #=> [[1,1],[1,2],[2,1],[2,2]]
   a._______(3).to_a  #=> [[1,1,1],[1,1,2],[1,2,1],[1,2,2],
                                   #    [2,1,1],[2,1,2],[2,2,1],[2,2,2]]
   a._______(0).to_a  #=> [[]] # one ___________of length 0",
 "replace"," Replaces the contents of self with the contents of
other_ary, truncating or expanding if necessary.

   a = [ 'a', 'b', 'c', 'd', 'e' ]
   a.______([ 'x', 'y', 'z' ])   #=> ['x', 'y', 'z']
   a      #=> ['x', 'y', 'z'] #its like reassigning the variable",
 "reverse!","
Reverses SELF in place.

   a = [ 'a', 'b', 'c' ]
   a._______       #=> ['c', 'b', 'a']
   a                #=> ['c', 'b', 'a'] ",
 "reverse_each","Same as Array#each, but traverses self in reverse
order.

   a = [ 'a', 'b', 'c' ]
   a.______ {|x| print x, ' ' } #=> c b a",
 "rindex"," Returns the index of the LAST object in self
== to obj. If a block is given instead of an
argument, returns index of first object for which block is
true, starting from the last object.
Returns nil if no match is found.
See also Array#index.

If neither block nor argument is given, an enumerator is returned instead.

   a = [ 'a', 'b', 'b', 'b', 'c' ]
   a.______('b')             #=> 3
   a.______('z')             #=> nil
   a.______ { |x| x == 'b' } #=> 3",
 "rotate","Returns new array by rotating self so that the element at
cnt in self is the first element of the new array. If cnt
is negative then it rotates in the opposite direction.

   a = [ 'a', 'b', 'c', 'd' ]
   a._______         #=> ['b', 'c', 'd', 'a']
   a                #=> ['a', 'b', 'c', 'd']
   a._______(2)      #=> ['c', 'd', 'a', 'b']
   a._______(-3)     #=> ['b', 'c', 'd', 'a'] ",
 "sample","Choose a random element or n random elements from the array. The elements
are chosen by using random and unique indices into the array in order to
ensure that an element doesn't repeat itself unless the array already
contained duplicate elements. If the array is empty the first form returns
nil and the second form returns an empty array.

If rng is given, it will be used as the random number generator.",
 "select","Invokes the block passing in successive elements from self,
returning an array containing those elements for which the block
returns a true value (equivalent to Enumerable#______).

If no block is given, an enumerator is returned instead.

   a = %w{ a b c d e f }
   a.______ {|v| v =~ /[aeiou]/}   #=> ['a', 'e'] ",
 "shift","Returns the first element of self and removes it (shifting all
other elements down by one). Returns nil if the array
is empty.

If a number _n_ is given, returns an array of the first n elements
(or less) just like array.slice!(0, n) does.

   args = [ '-m', '-q', 'filename' ]
   args._______     #=> '-m'
   args           #=> ['-q', 'filename']

   args = [ '-m', '-q', 'filename' ]
   args._______(2)  #=> ['-m', '-q']
   args           #=> ['filename'] ",
 "shuffle","Returns a new array with elements of this array ______.

   a = [ 1, 2, 3 ]           #=> [1, 2, 3]
   a.______                 #=> [2, 3, 1]

If rng is given, it will be used as the random number generator.

   a.______(random: Random.new(1))  #=> [1, 3, 2] ",
 ["slice","[]"],"Element Reference---Returns the element at _index_,
or returns a subarray starting at _start_ and
continuing for _length_ elements, or returns a subarray
specified by _range_.
Negative indices count backward from the end of the
array (-1 is the last element). Returns nil if the index
(or starting index) are out of range.

   a = [ 'a', 'b', 'c', 'd', 'e' ]
   a[2] +  a[0] + a[1]    #=> 'cab'
   a[6]                   #=> nil
   a[1, 2]                #=> [ 'b', 'c' ]
   a[1..3]                #=> [ 'b', 'c', 'd' ]
   a[4..7]                #=> [ 'e' ]
   a[6..10]               #=> nil
   a[-3, 3]               #=> [ 'c', 'd', 'e' ]
   # special cases
   a[5]                   #=> nil
   a[5, 1]                #=> []
   a[5..10]               #=> []",
 "sort","Returns a new array created by organizing self. Comparisons for
the _____ will be done using the <=> operator or using
an optional code block. The block implements a comparison between
a and b, returning -1, 0, or +1. 

   a = [ 'd', 'a', 'e', 'c', 'b' ]
   a.______                    #=> ['a', 'b', 'c', 'd', 'e']
   a.______ {|x,y| y <=> x }   #=> ['e', 'd', 'c', 'b', 'a'] ",
 ["take","first"] ,"Returns first n elements from ary.

   a = [1, 2, 3, 4, 5, 0]
   a.______(3)       #=> [1, 2, 3]",
 "take_while","
Passes elements to the block until the block returns nil or false,
then stops iterating and returns an array of all prior elements.

If no block is given, an enumerator is returned instead.

   a = [1, 2, 3, 4, 5, 0]
   a._______{|i| i < 3 }   #=> [1, 2] ",
 "transpose","Assumes that self is an array of arrays and rearranges the
rows and columns.

   a = [[1,2], [3,4], [5,6]]
   a.________  #=> [[1, 3, 5], [2, 4, 6]]",
 "uniq","Returns a new array by removing duplicate values in self. If a block
is given, it will use the return value of the block for comparison.

   a = [ 'a', 'a', 'b', 'b', 'c' ]
   a.uniq   # => ['a', 'b', 'c']

   b = [['student','sam'], ['student','george'], ['teacher','matz']]
   b.uniq { |s| s.first } # => [['student', 'sam'], ['teacher', 'matz']]",
 "unshift","Prepends objects to the front of self,
moving other elements upwards.

   a = [ 'b', 'c', 'd' ]
   a.unshift('a')   #=> ['a', 'b', 'c', 'd']
   a.unshift(1, 2)  #=> [ 1, 2, 'a', 'b', 'c', 'd']",
   "values_at","Returns an array containing the elements in
self corresponding to the given selector(s). The selectors
may be either integer indices or ranges.
See also Array#select.

   a = %w{ a b c d e f }
   a._______(1, 3, 5)
   a._______(1, 3, 5, 7)
   a._______(-1, -3, -5, -7)
   a._______(1..3, 2...5) ",
"zip","Converts any arguments to arrays, then merges elements of
self with corresponding elements from each argument. This
generates a sequence of self.size n-element
arrays, where n is one more that the count of arguments. If
the size of any argument is less than enumObj.size,
nil values are supplied. If a block is given, it is
invoked for each output array, otherwise an array of arrays is
returned.

   a = [ 4, 5, 6 ]
   b = [ 7, 8, 9 ]
   [1,2,3].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
   [1,2].zip(a,b)         #=> [[1, 4, 7], [2, 5, 8]]
   a.zip([1,2],[8])       #=> [[4,1,8], [5,2,nil], [6,nil,nil]] ",
   "|","Set Union---Returns a new array by joining this array with
other_ary, removing duplicates.

   [ 'a', 'b', 'c' ] | [ 'c', 'd', 'a' ]
          #=> [ 'a', 'b', 'c', 'd' ] ",
]







a = 0
	until a == n
	index = rand(hash.size)
	question = hash.values[index].split.join(' ')#.gsub(/\\n/,' ').gsub(/\\\\/,' ').gsub(/\\/,' ').delete("\n")
	
	p "which Array method is this?"
	p ''
	p question.split.join(' ')#.gsub(/\\n/, " ").gsub(/\\/," ")
	
	input = gets.chomp
		until hash.keys[index].include?(input)
			break if ['idk', 'i dont know', 'i give up'].include?(input)
			p ''
			p hash.values[index].split.join(' ')#.gsub(/\\n/,' ').gsub(/\\\\/,' ').gsub(/\\/,' ').delete("\n")
			p ''
			p '!!!!!!!!! try again !!!!!!!!!!'
			
			input = gets.chomp 
		end
		
		p ""
		p "------------- good job it is #{hash.keys[index]}-----------------"
		
		hash.delete((hash.keys[index]))
		a += 1
	end

p '~~~~~~~~~~ you finished ~~~~~~~~~~~~~~~~~'

end

p'how many flash cards do you want to do?'
array_flash(gets.chomp.to_i)


