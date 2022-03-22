contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 822]




// =====================  Runtime code  =====================


array of address sub_add3a794;
array of struct sub_01a835b7;
mapping of uint8 stor2;

function sub_01a835b7(?) payable {
    return sub_01a835b7[address(arg1)].field_0
}

function totalVoters() payable {
    return sub_add3a794.length
}

function votesOf(address arg1, uint256 arg2) payable {
    require arg2 < sub_01a835b7[address(arg1)].field_0
    return sub_01a835b7[address(arg1)][arg2].field_0, bool(stor2[address(arg1)][stor1[address(arg1)][arg2].field_0])
}

function sub_add3a794(?) payable {
    require arg1 < sub_add3a794.length
    return address(sub_add3a794[arg1])
}

function _fallback() payable {
  stop
}

function sub_2e5cadad(?) payable {
    stor2[address(msg.sender)][address(arg1)] = 0
}

function sub_e40297c9(?) payable {
    if 0 == sub_01a835b7[address(msg.sender)].field_0:
        sub_add3a794.length++
        if not sub_add3a794.length <= sub_add3a794.length + 1:
            idx = sub_add3a794.length + 1
            while sub_add3a794.length > idx:
                uint256(sub_add3a794[idx]) = 0
                idx = idx + 1
                continue 
        require sub_add3a794.length < sub_add3a794.length
        uint256(sub_add3a794[sub_add3a794.length]) = msg.sender or Mask(96, 160, uint256(sub_add3a794[sub_add3a794.length]))
    if not stor2[address(msg.sender)][address(arg1)]:
        sub_01a835b7[address(msg.sender)].field_0++
        if not sub_01a835b7[address(msg.sender)].field_0 <= sub_01a835b7[address(msg.sender)].field_0 + 1:
            idx = sub_01a835b7[address(msg.sender)].field_0 + 1
            while sub_01a835b7[address(msg.sender)].field_0 > idx:
                sub_01a835b7[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        require sub_01a835b7[address(msg.sender)].field_0 < sub_01a835b7[address(msg.sender)].field_0
        sub_01a835b7[address(msg.sender)][sub_01a835b7[address(msg.sender)].field_0].field_0 = sub_01a835b7[address(msg.sender)][sub_01a835b7[address(msg.sender)].field_0].field_160
    stor2[address(msg.sender)][address(arg1)] = 1
}



}
