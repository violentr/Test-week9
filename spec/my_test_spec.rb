require 'rspec'
require_relative '../test_questions'

describe 'the Friday test :)' do
  
  specify 'select_elements_starting_with_a' do
    n = select_elements_starting_with_a ['bananas', 'apples', 'pears', 'avocados']
    expect(n).to eq ['apples', 'avocados']
  end

  specify 'select_elements_starting_with_vowel' do
    n = select_elements_starting_with_vowel ['john', 'david', 'omar', 'fred', 'idris', 'angela']
    expect(n).to eq ['omar', 'idris', 'angela']
  end

  specify 'remove_nils_from_array' do
    n = remove_nils_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', false, 'c']
  end

  specify 'remove_nils_and_false_from_array' do
    n = remove_nils_and_false_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', 'c']
  end

  specify 'reverse_every_element_in_array' do
    n = reverse_every_element_in_array ['dog', 'monkey', 'elephant']
    expect(n).to eq ['god', 'yeknom', 'tnahpele']
  end

  specify 'every_possible_pairing_of_students' do
    n = every_possible_pairing_of_students(['Bob', 'Dave', 'Clive']) || []
    sorted = n.map {|pair| pair.sort}.sort_by {|pair| [pair.first, pair.last] }

    expect(sorted).to eq [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
  end

  specify 'all_elements_except_first_3' do
    n = all_elements_except_first_3 [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [4, 5, 6, 7]
  end

  specify 'add_element_to_beginning_of_array' do
    n = add_element_to_beginning_of_array [2, 3, 4, 5], 1
    expect(n).to eq [1, 2, 3, 4, 5]
  end

  specify 'array_sort_by_last_letter_of_word' do
    n = array_sort_by_last_letter_of_word ['sky', 'puma', 'maker']
    expect(n).to eq ['puma', 'maker', 'sky']
  end

  specify 'get_first_half_of_string' do
    a = get_first_half_of_string 'banana'
    b = get_first_half_of_string 'apple'

    expect(a).to eq 'ban'
    expect(b).to eq 'app'
  end

  specify 'make_numbers_negative' do
    a = make_numbers_negative 5
    b = make_numbers_negative -7

    expect(a).to eq -5
    expect(b).to eq -7
  end

  specify 'separate_array_into_even_and_odd_numbers' do
    n = separate_array_into_even_and_odd_numbers [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [[2, 4, 6], [1, 3, 5, 7]]
  end

  specify 'number_of_elements_that_are_palindromes' do
    n = number_of_elements_that_are_palindromes ['bob', 'radar', 'alex', 'noon', 'banana']
    expect(n).to eq 3
  end

  specify 'shortest_word_in_array' do
    n = shortest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'a'
  end

  specify 'longest_word_in_array' do
    n = longest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'different'
  end

  specify 'total_of_array' do
    n = total_of_array [1, 3, 5, 6, 2, 8]
    expect(n).to eq 25
  end

  specify 'double_array' do
    n = double_array [1, 2, 3]
    expect(n).to eq [1, 2, 3, 1, 2, 3]
  end

  specify 'turn_symbol_into_string' do
    n = turn_symbol_into_string 'foobar'
    expect(n).to eq 'foobar'
  end

  specify 'average_of_array' do
    n = average_of_array [10, 15, 25]
    expect(n).to eq 16
  end

  specify 'get_elements_until_greater_than_five' do
    n = get_elements_until_greater_than_five [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
    expect(n).to eq [1, 3, 5, 4, 1, 2]
  end

  specify 'convert_array_to_a_hash' do
    n = convert_array_to_a_hash ['a', 'b', 'c', 'd']
    expect(n).to eq({'a' => 'b', 'c' => 'd'})
  end

  specify 'get_all_letters_in_array_of_words' do
    n = get_all_letters_in_array_of_words ['cat', 'dog', 'fish']
    expect(n).to eq ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
  end

  specify 'swap_keys_and_values_in_a_hash' do
    n = swap_keys_and_values_in_a_hash({'a' => 'b', 'c' => 'd'})
    expect(n).to eq({'b' => 'a', 'd' => 'c'})
  end

  specify 'add_together_keys_and_values' do
    n = add_together_keys_and_values({1 => 1, 2 => 2})
    expect(n).to eq 6
  end

  specify 'remove_capital_letters_from_string' do
    n = remove_capital_letters_from_string 'Hello JohnDoe'
    expect(n).to eq 'ello ohnoe'
  end

  specify 'round_up_number' do
    n = round_up_number 3.142
    expect(n).to eq 4
  end

  specify 'round_down_number' do
    n = round_down_number 4.9
    expect(n).to eq 4
  end

  specify 'format_date_nicely' do
    n = format_date_nicely Time.new(2013, 10, 31)
    expect(n).to eq '18/10/2013'
  end

  specify 'get_domain_name_from_email_address' do
    n = get_domain_name_from_email_address 'alex@makersacademy.com'
    expect(n).to eq 'makersacademy'
  end

  xspecify 'titleize_a_string' do
    n = titleize_a_string 'the lion the witch and the wardrobe'
    expect(n).to eq 'The Lion the Witch and the Wardrobe'
  end

  specify 'check_a_string_for_special_characters' do
    a = check_a_string_for_special_characters 'ABCdef123'
    b = check_a_string_for_special_characters 'ABC@def123!'

    expect(a).to be_false
    expect(b).to be_true
  end

  specify 'get_upper_limit_of' do
    n = get_upper_limit_of 1..20
    expect(n).to eq 20
  end

  specify 'is_a_3_dot_range?' do
    a = is_a_3_dot_range? 1..20
    b = is_a_3_dot_range? 1...20

    expect(a).to be_false
    expect(b).to be_true
  end

  specify 'square_root_of' do
    a = square_root_of 9
    b = square_root_of 3
    expect(a).to eq 3.0
    expect(b).to eq 1.7320508075688772
  end

  specify 'word_count_a_file' do
    n = word_count_a_file 'lorem.txt'
    expect(n).to eq 70
  end

  xspecify 'call_method_from_string' do
    expect { call_method_from_string('foobar') }.to raise_error(NameError)
  end

  xspecify 'is_a_2014_bank_holiday?' do
    a = is_a_2014_bank_holiday?(Time.new(2014, 8, 25))
    b = is_a_2014_bank_holiday?(Time.new(2014, 8, 26))

    expect(a).to be_true
    expect(b).to be_false
  end

#   specify 'your_birthday_is_on_a_friday_in_the_year' do
#     n = your_birthday_is_on_a_friday_in_the_year(Time.new(2013, 1, 1))
#     expect(n).to eq 2016
#   end

#   specify 'count_words_of_each_length_in_a_file' do
#     n = count_words_of_each_length_in_a_file('lorem.txt') || []
#     expect(Hash[n.sort]).to eq({1=>1, 2=>5, 3=>7, 4=>12, 5=>14, 6=>4, 7=>8, 8=>6, 9=>6, 10=>2, 11=>2, 12=>3}) 
#   end
    specify 'fizzbuzz' do
      a = fizzbuzz_without_modulo(3)
      b = fizzbuzz_without_modulo(5)
      c = fizzbuzz_without_modulo(15)
      d = fizzbuzz_without_modulo(17)
      expect(a).to eq('fizz')
      expect(b).to eq('buzz')
      expect(c).to eq('fizzbuzz')
      expect(d).to eq('17')
  end
 end
