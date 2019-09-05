# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    else
        x = 0
        keyarray = contacts.keys
        hash = Hash.new
        keyarray.each do |y|
            hash[y] = emails[x]
            x = x + 1
        end
    end
    return hash
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    unless contact_info[0].any?
        return contacts
    else
        keyarray = contacts.keys
        newHash = Hash.new {|hash, key| hash[key] = { } }
        c = 0
        keyarray.each do |x|
            newHash[x].store :email,contact_info[c][0]
            newHash[x].store :phone,contact_info[c][1]
            c = c + 1
        end
    end
    return newHash
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
