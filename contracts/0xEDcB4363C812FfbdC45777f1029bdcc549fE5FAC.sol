contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[61 len 4627]
}



// =====================  Runtime code  =====================


const sub_e679ef71(?) = block.difficulty


uint64 stor0;
address stor0;
array of struct sub_e07352ef;

function entityStructs(uint256 arg1) {
    require arg1 < sub_e07352ef.length
    return sub_e07352ef[arg1].field_0, 
           sub_e07352ef[arg1].field_256,
           sub_e07352ef[arg1].field_512,
           sub_e07352ef[arg1].field_768,
           sub_e07352ef[arg1].field_1024,
           sub_e07352ef[arg1].field_1280,
           sub_e07352ef[arg1].field_1536,
           sub_e07352ef[arg1].field_1792,
           sub_e07352ef[arg1].field_2048,
           sub_e07352ef[arg1].field_2304,
           sub_e07352ef[arg1].field_2560,
           sub_e07352ef[arg1].field_2816,
           sub_e07352ef[arg1].field_3072
}

function length() {
    return sub_e07352ef.length
}

function sub_9934c9fa(?) {
    require arg1 < sub_e07352ef.length
    return sub_e07352ef[arg1].field_1024, 
           sub_e07352ef[arg1].field_1792,
           sub_e07352ef[arg1].field_2048,
           sub_e07352ef[arg1].field_2304,
           sub_e07352ef[arg1].field_2560,
           sub_e07352ef[arg1].field_2816,
           sub_e07352ef[arg1].field_3072
}

function sub_e07352ef(?) {
    require arg1 < sub_e07352ef.length
    return sub_e07352ef[arg1].field_0, 
           sub_e07352ef[arg1].field_256,
           sub_e07352ef[arg1].field_512,
           sub_e07352ef[arg1].field_768,
           sub_e07352ef[arg1].field_1280,
           sub_e07352ef[arg1].field_1536
}

function _fallback() payable {
    revert 
}

function sub_ce89f063(?) {
    if arg1 <= arg2:
        return (arg2 - arg1)
    return (arg1 - arg2)
}

function buy(uint256 arg1) payable {
    require arg1 < sub_e07352ef.length
    require msg.value == sub_e07352ef[arg1].field_1536
    require arg1 < sub_e07352ef.length
    require not sub_e07352ef[arg1].field_1024
    require arg1 < sub_e07352ef.length
    sub_e07352ef[arg1].field_256 = msg.sender
    sub_e07352ef[arg1].field_1024 = 1
    sub_e07352ef[arg1].field_2560 = block.number
    return arg1
}

function cancel(uint256 arg1) payable {
    require arg1 < sub_e07352ef.length
    require sub_e07352ef[arg1].field_0 == msg.sender
    require arg1 < sub_e07352ef.length
    require not sub_e07352ef[arg1].field_1024
    require arg1 < sub_e07352ef.length
    sub_e07352ef[arg1].field_1024 = 2
    sub_e07352ef[arg1].field_2304 = block.number
    call sub_e07352ef[arg1].field_0 with:
       value sub_e07352ef[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    return arg1
}

function sub_9f82ad8c(?) payable {
    require msg.value >= 10^16
    require arg3 >= 10^16
    require arg1 >= block.number
    sub_e07352ef.length++
    if not sub_e07352ef.length <= sub_e07352ef.length + 1:
        idx = (13 * sub_e07352ef.length) + 13
        while 13 * sub_e07352ef.length > idx:
            sub_e07352ef[idx].field_0 = 0
            sub_e07352ef[idx].field_256 = 0
            sub_e07352ef[idx].field_512 = 0
            sub_e07352ef[idx].field_768 = 0
            sub_e07352ef[idx].field_1024 = 0
            sub_e07352ef[idx].field_1280 = 0
            sub_e07352ef[idx].field_1536 = 0
            sub_e07352ef[idx].field_1792 = 0
            sub_e07352ef[idx].field_2048 = 0
            sub_e07352ef[idx].field_2304 = 0
            sub_e07352ef[idx].field_2560 = 0
            sub_e07352ef[idx].field_2816 = 0
            sub_e07352ef[idx].field_3072 = 0
            idx = idx + 13
            continue 
    sub_e07352ef[sub_e07352ef.length].field_0 = msg.sender
    sub_e07352ef[sub_e07352ef.length].field_256 = 0
    sub_e07352ef[sub_e07352ef.length].field_512 = arg1
    sub_e07352ef[sub_e07352ef.length].field_768 = arg2
    sub_e07352ef[sub_e07352ef.length].field_1024 = 0
    sub_e07352ef[sub_e07352ef.length].field_1280 = msg.value
    sub_e07352ef[sub_e07352ef.length].field_1536 = arg3
    if arg4:
        sub_e07352ef[sub_e07352ef.length].field_1792 = 1
    else:
        sub_e07352ef[sub_e07352ef.length].field_1792 = 0
    sub_e07352ef[sub_e07352ef.length].field_2048 = block.number
    sub_e07352ef[sub_e07352ef.length].field_2304 = 0
    sub_e07352ef[sub_e07352ef.length].field_2560 = 0
    sub_e07352ef[sub_e07352ef.length].field_2816 = 0
    sub_e07352ef[sub_e07352ef.length].field_3072 = 0
    return (sub_e07352ef.length + 1)
}

function sub_7366bd78(?) payable {
    require address(stor0) == msg.sender
    require arg1 < sub_e07352ef.length
    require sub_e07352ef[arg1].field_1024 == 1
    require arg1 < sub_e07352ef.length
    require sub_e07352ef[arg1].field_512 <= block.number
    require arg1 < sub_e07352ef.length
    call address(stor0) with:
       value 25 * sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 / 10000 wei
         gas 2300 * is_zero(value) wei
    require arg1 < sub_e07352ef.length
    if sub_e07352ef[arg1].field_1792 != 1:
    else:
        require arg1 < sub_e07352ef.length
        if block.difficulty < sub_e07352ef[arg1].field_768:
            call sub_e07352ef[arg1].field_256 with:
               value sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 - (25 * sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 4
        else:
            call sub_e07352ef[arg1].field_0 with:
               value sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 - (25 * sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 3
    require arg1 < sub_e07352ef.length
    if sub_e07352ef[arg1].field_1792:
    else:
        require arg1 < sub_e07352ef.length
        if block.difficulty > sub_e07352ef[arg1].field_768:
            call sub_e07352ef[arg1].field_256 with:
               value sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 - (25 * sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 4
        else:
            call sub_e07352ef[arg1].field_0 with:
               value sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 - (25 * sub_e07352ef[arg1].field_1280 + sub_e07352ef[arg1].field_1536 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 3
    sub_e07352ef[arg1].field_2816 = block.number
    sub_e07352ef[arg1].field_3072 = uint64(stor0)
    sub_e07352ef[arg1].field_3136 = 0
    return arg1
}

function sub_685f9854(?) payable {
    require arg1 < sub_e07352ef.length
    require sub_e07352ef[arg1].field_1024 == 1
    require arg1 < sub_e07352ef.length
    if sub_e07352ef[arg1].field_512 <= block.number:
        require block.number - sub_e07352ef[arg1].field_512 <= 10
    else:
        require sub_e07352ef[arg1].field_512 - block.number <= 10
    require arg1 < sub_e07352ef.length
    call msg.sender with:
       value 25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000 / 2 wei
         gas 2300 * is_zero(value) wei
    call address(stor0) with:
       value 25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000 / 2 wei
         gas 2300 * is_zero(value) wei
    require arg1 < sub_e07352ef.length
    if sub_e07352ef[arg1].field_1792 != 1:
    else:
        require arg1 < sub_e07352ef.length
        if block.difficulty < sub_e07352ef[arg1].field_768:
            call sub_e07352ef[arg1].field_256 with:
               value sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 - (25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 4
        else:
            call sub_e07352ef[arg1].field_0 with:
               value sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 - (25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 3
    require arg1 < sub_e07352ef.length
    if sub_e07352ef[arg1].field_1792:
    else:
        require arg1 < sub_e07352ef.length
        if block.difficulty > sub_e07352ef[arg1].field_768:
            call sub_e07352ef[arg1].field_256 with:
               value sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 - (25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 4
        else:
            call sub_e07352ef[arg1].field_0 with:
               value sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 - (25 * sub_e07352ef[arg1].field_1536 + sub_e07352ef[arg1].field_1280 / 10000) wei
                 gas 2300 * is_zero(value) wei
            sub_e07352ef[arg1].field_1024 = 3
    sub_e07352ef[arg1].field_2816 = block.number
    sub_e07352ef[arg1].field_3072 = msg.sender
    return arg1
}



}
