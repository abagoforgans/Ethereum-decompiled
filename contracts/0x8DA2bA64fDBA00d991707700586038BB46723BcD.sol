contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 3125]
}



// =====================  Runtime code  =====================


const register = 5


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
mapping of struct sub_625d0be9;
mapping of uint256 addressToPersonId;
mapping of uint8 addressPresent;

function addressPresent(address arg1) payable {
    return addressPresent[arg1]
}

function sub_625d0be9(?) payable {
    return sub_625d0be9[arg1].field_0
}

function addressToPersonId(address arg1) payable {
    return addressToPersonId[arg1]
}

function getScore(uint8 arg1, bytes32 arg2) payable {
    require arg2 == sub_625d0be9[arg2].field_0
    require sub_625d0be9[arg2][2][arg1 << 248].field_8
    return sub_625d0be9[arg2][2][arg1 << 248].field_768
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor1):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setLookup(address arg1) payable {
    if msg.sender == address(stor1):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function unlinkAddress(address arg1) payable {
    require addressPresent[address(msg.sender)]
    require addressToPersonId[address(arg1)] == addressToPersonId[msg.sender]
    addressPresent[address(arg1)] = 0
    addressToPersonId[address(arg1)] = 0
}

function linkAddress(address arg1) payable {
    require addressPresent[address(msg.sender)]
    require not addressPresent[address(arg1)]
    addressPresent[address(arg1)] = 1
    addressToPersonId[address(arg1)] = addressToPersonId[address(msg.sender)]
}

function refreshScore(uint8 arg1, bytes32 arg2) payable {
    require arg2 == sub_625d0be9[arg2].field_0
    require sub_625d0be9[arg2][2][arg1 << 248].field_8
    call address(stor0).0xadcd45c8 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    mem[196] = sub_625d0be9[arg2][2][arg1 << 248][1].field_0
    idx = 196
    s = 0
    while sub_625d0be9[arg2][2][arg1 << 248][1].length + 196 > idx + 32:
        mem[idx + 32] = sub_625d0be9[arg2][2][arg1 << 248][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call address(ext_call.return_data[0]).score(bytes32 rg1, string rg2) with:
         gas gas_remaining - 25050 wei
        args arg2, Array(len=sub_625d0be9[arg2][2][arg1 << 248][1].length, data=mem[196 len sub_625d0be9[arg2][2][arg1 << 248][1].length + (floor32(sub_625d0be9[arg2][2][arg1 << 248][1].length - 1) + -sub_625d0be9[arg2][2][arg1 << 248][1].length + 32 % 32)])
    require ext_call.success
}

function linkAccount(uint8 arg1, string arg2, string arg3) payable {
    require addressPresent[address(msg.sender)]
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_0 = 0
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_8 = arg1
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_256 = 0
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_256 = 0
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_512 = 0
    sub_625d0be9[stor3[address(msg.sender)]][2][arg1 << 248].field_768 = 0
    call address(stor0).0xadcd45c8 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).verify(bytes32 rg1, string rg2, string rg3) with:
         gas gas_remaining - 25050 wei
        args addressToPersonId[address(msg.sender)], Array(len=arg2.length, data=arg2[all]), arg2.length + 128
    require ext_call.success
}

function updateAccount(uint8 arg1, bytes32 arg2, bool arg3, bytes32 arg4) payable {
    call address(stor0).0xadcd45c8 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2 == sub_625d0be9[arg2].field_0
    require sub_625d0be9[arg2][2][arg1 << 248].field_8
    sub_625d0be9[arg2][2][arg1 << 248].field_0 = arg3 or Mask(248, 8, sub_625d0be9[arg2][2][arg1 << 248].field_0)
    sub_625d0be9[arg2][2][arg1 << 248].field_512 = arg4
    sub_625d0be9[arg2][2][arg1 << 248].field_0 = uint8(arg3)
    sub_625d0be9[arg2][2][arg1 << 248].field_0 = uint8(arg3)
    sub_625d0be9[arg2][2][arg1 << 248].field_8 = sub_625d0be9[arg2][2][arg1 << 248].field_8
    if 31 >= sub_625d0be9[arg2][2][arg1 << 248][1].length:
        idx = 0
        while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
            sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_625d0be9[arg2][2][arg1 << 248].field_256 = Mask(255, 1, sub_625d0be9[arg2][2][arg1 << 248].field_256 and (256 * not sub_625d0be9[arg2][2][arg1 << 248].field_256) - 1) + 1
        if not Mask(255, 1, sub_625d0be9[arg2][2][arg1 << 248].field_256 and (256 * not sub_625d0be9[arg2][2][arg1 << 248].field_256) - 1):
            idx = 0
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][s + 1].field_0 = sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    sub_625d0be9[arg2][2][arg1 << 248].field_768 = sub_625d0be9[arg2][2][arg1 << 248].field_768
}

function updateScore(uint8 arg1, bytes32 arg2, uint24 arg3) payable {
    call address(stor0).0xadcd45c8 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2 == sub_625d0be9[arg2].field_0
    require sub_625d0be9[arg2][2][arg1 << 248].field_8
    sub_625d0be9[arg2][2][arg1 << 248].field_768 = arg3 or Mask(232, 24, sub_625d0be9[arg2][2][arg1 << 248].field_768)
    sub_625d0be9[arg2][2][arg1 << 248].field_0 = sub_625d0be9[arg2][2][arg1 << 248].field_0
    sub_625d0be9[arg2][2][arg1 << 248].field_0 = sub_625d0be9[arg2][2][arg1 << 248].field_0
    sub_625d0be9[arg2][2][arg1 << 248].field_8 = sub_625d0be9[arg2][2][arg1 << 248].field_8
    sub_625d0be9[arg2][2][arg1 << 248].field_16 = 0
    if 31 >= sub_625d0be9[arg2][2][arg1 << 248][1].length:
        idx = 0
        while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
            sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_625d0be9[arg2][2][arg1 << 248].field_256 = Mask(255, 1, sub_625d0be9[arg2][2][arg1 << 248].field_256 and (256 * not sub_625d0be9[arg2][2][arg1 << 248].field_256) - 1) + 1
        if not Mask(255, 1, sub_625d0be9[arg2][2][arg1 << 248].field_256 and (256 * not sub_625d0be9[arg2][2][arg1 << 248].field_256) - 1):
            idx = 0
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][s + 1].field_0 = sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32
            while sub_625d0be9[arg2][2][arg1 << 248][1].length + 31 / 32 > idx:
                sub_625d0be9[arg2][2][arg1 << 248][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    sub_625d0be9[arg2][2][arg1 << 248].field_768 = sub_625d0be9[arg2][2][arg1 << 248].field_768
}



}
