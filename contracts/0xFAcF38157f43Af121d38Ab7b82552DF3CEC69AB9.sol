contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 938]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 stor1;
array of address stor2;

function owner() payable {
    return address(owner)
}

function killContract() payable {
    require address(owner) == msg.sender
}

function removeMember(address arg1) payable {
    require address(owner) == msg.sender
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
}

function addMember(address arg1, string arg2) payable {
    require msg.sender == address(owner)
}

function claimOwnership() payable {
    require not address(owner)
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        call address(stor2[idx]) with:
           value msg.value / stor2.length wei
             gas 0 wei
        idx = idx + 1
        continue 
}

function changeMemberAddress(address arg1) payable {
    require stor1[address(msg.sender)] < stor2.length
    if address(stor2[stor1[address(msg.sender)]]) == msg.sender:
        require stor1[address(msg.sender)] < stor2.length
        uint256(stor2[stor1[address(msg.sender)]]) = arg1 or Mask(96, 160, uint256(stor2[stor1[address(msg.sender)]]))
}

function sub_fc9fc96e(?) payable {
    require arg1 < stor2.length
    mem[192] = stor[sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)]
    idx = 192
    s = 0
    while stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 192 > idx + 32:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1]), 
           Array(len=stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[192 len stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)])
}



}
