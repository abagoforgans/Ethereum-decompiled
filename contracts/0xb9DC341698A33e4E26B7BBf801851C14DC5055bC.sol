contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 865]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct sub_ce160d36;

function owner() {
    return address(owner)
}

function sub_ce160d36(?) {
    require arg1 < sub_ce160d36.length
    return sub_ce160d36[arg1].field_0, 
           sub_ce160d36[arg1].field_256,
           sub_ce160d36[arg1].field_512,
           sub_ce160d36[arg1].field_768,
           sub_ce160d36[arg1].field_1024,
           sub_ce160d36[arg1].field_1280,
           sub_ce160d36[arg1].field_1536
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_85d45a1a(?) {
    require arg1 < sub_ce160d36.length
    require msg.sender == sub_ce160d36[arg1].field_512
    require arg2 <= (block.timestamp * sub_ce160d36[arg1].field_1280) - (sub_ce160d36[arg1].field_1536 * sub_ce160d36[arg1].field_1280)
    require sub_ce160d36[arg1].field_768 - arg2 >= 0
    call msg.sender with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call address(owner) with:
       value sub_ce160d36[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    sub_ce160d36[arg1].field_1536 = block.timestamp
}

function sub_72b4f6f8(?) {
    sub_ce160d36.length++
    if not sub_ce160d36.length <= sub_ce160d36.length + 1:
        idx = (7 * sub_ce160d36.length) + 7
        while 7 * sub_ce160d36.length > idx:
            sub_ce160d36[idx].field_0 = 0
            sub_ce160d36[idx].field_256 = 0
            sub_ce160d36[idx].field_512 = 0
            sub_ce160d36[idx].field_768 = 0
            sub_ce160d36[idx].field_1024 = 0
            sub_ce160d36[idx].field_1280 = 0
            sub_ce160d36[idx].field_1536 = 0
            idx = idx + 7
            continue 
    require sub_ce160d36.length < sub_ce160d36.length
    sub_ce160d36[sub_ce160d36.length].field_0 = block.timestamp
    sub_ce160d36[sub_ce160d36.length].field_256 = msg.sender or Mask(96, 160, sub_ce160d36[sub_ce160d36.length].field_256)
    sub_ce160d36[sub_ce160d36.length].field_512 = arg1 or Mask(96, 160, sub_ce160d36[sub_ce160d36.length].field_512)
    sub_ce160d36[sub_ce160d36.length].field_768 = msg.value
    sub_ce160d36[sub_ce160d36.length].field_1280 = arg2
    sub_ce160d36[sub_ce160d36.length].field_1536 = block.timestamp
}



}
