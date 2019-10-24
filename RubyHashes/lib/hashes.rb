# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    else
        x = 0
        karr = contacts.keys
        hash = Hash.new
        karr.each do |y|
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
        karr = contacts.keys
        newHash = Hash.new {|hash, key| hash[key] = { } }
        c = 0
        karr.each do |x|
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
    karr = contacts.keys
    earr = Array.new
    parr = Array.new
    c = 0
    karr.each do |x|
        hash = Hash.new
        hash = contacts[x]
        earr[c] = hash[:email]
        parr[c] = hash[:phone]
        c = c + 1 
    end
    x = 0
    while x < karr.length 
        karr[x] = karr[x].id2name
        x = x + 1
    end
    finalarr = [ earr, parr, karr ] 
    return finalarr

end
