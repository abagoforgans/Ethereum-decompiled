contract main {




// =====================  Runtime code  =====================


#
#  - sub_b6c18b67(?)
#
address stor0;
mapping of struct sub_565f617e;

function sub_565f617e(?) {
    return sub_565f617e[msg.sender][4][0 len sub_565f617e[msg.sender][4].length].field_0
}

function _fallback() payable {
    call this.address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function sub_52a5a7fb(?) {
    require bool(sub_565f617e[msg.sender].field_1792) == 1
    require not sub_565f617e[msg.sender].field_1800
    sub_565f617e[msg.sender].field_1808 = 1
    return 1
}

function sub_e05fbae3(?) {
    idx = 768
    s = 0
    while sub_565f617e[msg.sender][2].length + 736 > idx:
        mem[idx + 32] = sub_565f617e[msg.sender][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(sub_565f617e[msg.sender][2].length) + 800
    s = 0
    while ceil32(sub_565f617e[msg.sender][2].length) + sub_565f617e[msg.sender][4].length + 768 > idx:
        mem[idx + 32] = sub_565f617e[msg.sender][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_565f617e[msg.sender].field_1280:
        idx = ceil32(sub_565f617e[msg.sender][2].length) + ceil32(sub_565f617e[msg.sender][4].length) + 832
        s = 0
        while ceil32(sub_565f617e[msg.sender][2].length) + ceil32(sub_565f617e[msg.sender][4].length) + (32 * sub_565f617e[msg.sender].field_1280) + 800 > idx:
            mem[idx + 32] = sub_565f617e[msg.sender][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return sub_565f617e[msg.sender].field_1536
}

function sub_1d6ad290(?) {
    require msg.sender == stor0
    require 1 == bool(sub_565f617e[address(arg1)].field_1808)
    if sub_565f617e[address(arg1)].field_768 > 0:
        call arg1 with:
           value sub_565f617e[address(arg1)].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_565f617e[address(arg1)].field_0 = 0
    sub_565f617e[address(arg1)].field_256 = 0
    sub_565f617e[address(arg1)].field_768 = 0
    sub_565f617e[address(arg1)].field_512 = 0
    sub_565f617e[address(arg1)].field_520 = mem[128 len 31]
    idx = 0
    while sub_565f617e[address(arg1)][2].length + 31 / 32 > idx:
        sub_565f617e[address(arg1)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[address(arg1)].field_1024 = 0
    sub_565f617e[address(arg1)].field_1032 = mem[160 len 31]
    idx = 0
    while sub_565f617e[address(arg1)][4].length + 31 / 32 > idx:
        sub_565f617e[address(arg1)][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[address(arg1)].field_1536 = 0
    sub_565f617e[address(arg1)].field_1792 = 0
    sub_565f617e[address(arg1)].field_1280 = 0
    idx = 0
    while sub_565f617e[address(arg1)].field_1280 > idx:
        sub_565f617e[address(arg1)][idx + 5].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_ed3e010b(?) {
    require msg.sender == sub_565f617e[address(arg1)].field_256
    require 1 == bool(sub_565f617e[address(arg1)].field_1808)
    if sub_565f617e[address(arg1)].field_768 > 0:
        call arg1 with:
           value sub_565f617e[address(arg1)].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    sub_565f617e[address(arg1)].field_0 = 0
    sub_565f617e[address(arg1)].field_256 = 0
    sub_565f617e[address(arg1)].field_768 = 0
    sub_565f617e[address(arg1)].field_512 = 0
    sub_565f617e[address(arg1)].field_520 = mem[128 len 31]
    idx = 0
    while sub_565f617e[address(arg1)][2].length + 31 / 32 > idx:
        sub_565f617e[address(arg1)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[address(arg1)].field_1024 = 0
    sub_565f617e[address(arg1)].field_1032 = mem[160 len 31]
    idx = 0
    while sub_565f617e[address(arg1)][4].length + 31 / 32 > idx:
        sub_565f617e[address(arg1)][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[address(arg1)].field_1536 = 0
    sub_565f617e[address(arg1)].field_1792 = 0
    sub_565f617e[address(arg1)].field_1280 = 0
    idx = 0
    while sub_565f617e[address(arg1)].field_1280 > idx:
        sub_565f617e[address(arg1)][idx + 5].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_ec17be62(?) payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please check your amount, once again.'
    if cd[36] != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please check your amount, once again.'
    if sub_565f617e[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Another contract found on same address.'
    sub_565f617e[msg.sender].field_0 = sub_565f617e[msg.sender].field_160
    sub_565f617e[msg.sender].field_256 = address(cd[4])
    sub_565f617e[msg.sender].field_512 = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        sub_565f617e[msg.sender][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while sub_565f617e[msg.sender][2].length + 31 / 32 > idx:
        sub_565f617e[msg.sender][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[msg.sender].field_1024 = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        sub_565f617e[msg.sender][s + 4].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while sub_565f617e[msg.sender][4].length + 31 / 32 > idx:
        sub_565f617e[msg.sender][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_565f617e[msg.sender].field_1536 = cd[132]
    sub_565f617e[msg.sender].field_1792 = 1
    sub_565f617e[msg.sender].field_768 = cd[36] - (2 * cd[36] / 100)
    if cd[36] - (2 * cd[36] / 100) > 0:
        call this.address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if 2 * cd[36] / 100 > 0:
        call stor0 with:
           value 2 * cd[36] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_d0ec8c2b(?) payable {
    if arg1 <= 0:
        revert with 0, 'Trader Rules not followed.'
    if bool(sub_565f617e[msg.sender].field_1792) != 1:
        revert with 0, 'Trader Rules not followed.'
    if sub_565f617e[msg.sender].field_1808:
        revert with 0, 'Trader Rules not followed.'
    sub_565f617e[msg.sender].field_1280++
    stor[('array', 5, ('map', 'msg.sender', ('name', 'sub_565f617e', 1))) + sub_565f617e[msg.sender].field_1280].field_0 = arg1
    if sub_565f617e[msg.sender].field_1280 == sub_565f617e[msg.sender].field_1536:
        idx = 0
        s = 0
        while idx < sub_565f617e[msg.sender].field_1280:
            mem[0] = sha3(msg.sender, 1) + 5
            idx = idx + 1
            s = s + sub_565f617e[msg.sender][idx + 5].field_0
            continue 
        if sub_565f617e[msg.sender].field_1536 + (sub_565f617e[msg.sender].field_1536 * sub_565f617e[msg.sender].field_1536) / 2 != s * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280 * sub_565f617e[msg.sender].field_1280:
            sub_565f617e[msg.sender].field_1280 = 0
            idx = 0
            while sub_565f617e[msg.sender].field_1280 > idx:
                sub_565f617e[msg.sender][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
        else:
            sub_565f617e[msg.sender].field_1792 = 0
            sub_565f617e[msg.sender].field_1800 = 1
            if sub_565f617e[msg.sender].field_768 > 0:
                call sub_565f617e[msg.sender].field_256 with:
                   value sub_565f617e[msg.sender].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            sub_565f617e[address(msg.sender)].field_0 = 0
            sub_565f617e[address(msg.sender)].field_256 = 0
            sub_565f617e[address(msg.sender)].field_768 = 0
            sub_565f617e[address(msg.sender)].field_512 = 0
            sub_565f617e[address(msg.sender)].field_520 = mem[128 len 31]
            idx = 0
            while sub_565f617e[address(msg.sender)][2].length + 31 / 32 > idx:
                sub_565f617e[address(msg.sender)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            sub_565f617e[address(msg.sender)].field_1024 = 0
            sub_565f617e[address(msg.sender)].field_1032 = mem[160 len 31]
            idx = 0
            while sub_565f617e[address(msg.sender)][4].length + 31 / 32 > idx:
                sub_565f617e[address(msg.sender)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            sub_565f617e[address(msg.sender)].field_1536 = 0
            sub_565f617e[address(msg.sender)].field_1792 = 0
            sub_565f617e[address(msg.sender)].field_1280 = 0
            idx = 0
            while sub_565f617e[address(msg.sender)].field_1280 > idx:
                sub_565f617e[address(msg.sender)][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}



}
