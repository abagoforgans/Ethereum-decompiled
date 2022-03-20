contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 928]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 sub_b879e4b3;
mapping of struct authorities;
array of struct sub_c19dd8ab;
mapping of uint256 sub_e89b9236;

function authorities(address arg1) payable {
    return authorities[arg1].field_0, authorities[arg1].field_256, authorities[arg1].field_512
}

function sub_b879e4b3(?) payable {
    return sub_b879e4b3
}

function sub_c19dd8ab(?) payable {
    require arg2 < sub_c19dd8ab[arg1].field_0
    return sub_c19dd8ab[arg1][arg2].field_0, 
           sub_c19dd8ab[arg1][arg2].field_0,
           sub_c19dd8ab[arg1][arg2].field_256,
           sub_c19dd8ab[arg1][arg2].field_512
}

function sub_e89b9236(?) payable {
    return sub_e89b9236[arg1]
}

function _fallback() payable {
    revert 
}

function changeContractOwner(address arg1) payable {
    if address(stor0) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_4f3041ef(?) payable {
    if address(stor0) == msg.sender:
        authorities[address(arg1)].field_0 = 0
        authorities[address(arg1)].field_256 = 0
        authorities[address(arg1)].field_512 = 0
}

function sub_ff841ca0(?) payable {
    if address(stor0) == msg.sender:
        authorities[address(arg1)].field_0 = arg2
        authorities[address(arg1)].field_256 = 1
        authorities[address(arg1)].field_512 = block.timestamp
}

function sub_65f224ed(?) payable {
    if not sub_c19dd8ab[arg1].field_0:
        sub_b879e4b3++
    sub_c19dd8ab[arg1].field_0++
    if not sub_c19dd8ab[arg1].field_0 <= sub_c19dd8ab[arg1].field_0 + 1:
        idx = (3 * sub_c19dd8ab[arg1].field_0) + 3
        while 3 * sub_c19dd8ab[arg1].field_0 > idx:
            sub_c19dd8ab[arg1][idx].field_0 = 0
            sub_c19dd8ab[arg1][idx].field_256 = 0
            sub_c19dd8ab[arg1][idx].field_512 = 0
            idx = idx + 1
            continue 
    sub_c19dd8ab[arg1][sub_c19dd8ab[arg1].field_0].field_0 = msg.sender
    sub_c19dd8ab[arg1][sub_c19dd8ab[arg1].field_0].field_160 = authorities[address(msg.sender)].field_256
    sub_c19dd8ab[arg1][sub_c19dd8ab[arg1].field_0].field_168 = Mask(88, 168, msg.sender) >> 168
    sub_c19dd8ab[arg1][sub_c19dd8ab[arg1].field_0].field_256 = arg2
    sub_c19dd8ab[arg1][sub_c19dd8ab[arg1].field_0].field_512 = block.timestamp
    sub_e89b9236[arg1] = sub_c19dd8ab[arg1].field_0 + 1
}



}
