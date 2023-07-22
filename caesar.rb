def caesar_cipher(original_message, shift_number)
    ascii_message = original_message.bytes
    encoded_message = ascii_message.map { |number|
        # Check if number evaluates to a letter in ascii
        if (number > 64 && number < 91) ||
            (number > 96 && number < 123)
            # Check if number shifts past 'z' in the alphabet
            if (number + shift_number > 90 && number < 91) ||
                (number + shift_number > 122 && number < 123)
                number = number - 26 + shift_number
            else
                number += shift_number
            end
        else
            number = number
        end

    }

    puts encoded_message.pack('c*')
end

caesar_cipher("What a string!", 5)
caesar_cipher("Pbzobq Jbppxdb.", 3)