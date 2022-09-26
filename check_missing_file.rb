# file naming: MLI.z01~MLI.z1573

file_num = 0

# file naming rule 1
for file_num in 1..3    # revise file sequence number
    fix_name = "MLI.z0"    # revise fix file name
    file_name = fix_name + file_num.to_s
    if File.exist?(file_name)
        file_num += 1
    else
        puts file_name
    end
end

# file naming rule 2
for file_num in 10..12    # revise file sequence number
    fix_name = "MLI.z"    # revise fix file name
    file_name = fix_name + file_num.to_s
    if File.exist?(file_name)
        file_num += 1
    else
        puts file_name
    end
end
