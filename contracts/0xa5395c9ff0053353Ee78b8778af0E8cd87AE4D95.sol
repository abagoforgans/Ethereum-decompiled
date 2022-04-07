contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 2477]




// =====================  Runtime code  =====================


uint256 totalPlayers;
address owner;
mapping of address stor2;
mapping of uint8 stor3;
mapping of uint256 sub_4418d0b7;
mapping of struct sub_c3d0c5d3;

function sub_4418d0b7(?) {
    return sub_4418d0b7[arg1]
}

function owner() {
    return owner
}

function sub_c3d0c5d3(?) {
    return sub_c3d0c5d3[arg1].field_0, sub_c3d0c5d3[arg1].field_256, sub_c3d0c5d3[arg1].field_512
}

function totalPlayers() {
    return totalPlayers
}

function Kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function Game() {
    owner = msg.sender
}

function addBankroll() payable {
    require msg.sender == owner
}

function sub_af150c25(?) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function WithdrawEther() payable {
    require msg.value <= 0
    if stor3[address(msg.sender)]:
        require sub_4418d0b7[address(msg.sender)] > 0
        call msg.sender with:
           value sub_4418d0b7[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}

function sub_fec64649(?) payable {
    require stor3[address(msg.sender)]
    require msg.value <= 0
    if block.timestamp >= sub_c3d0c5d3[address(msg.sender)].field_512:
        sub_4418d0b7[address(msg.sender)] += sub_c3d0c5d3[address(msg.sender)].field_0
        sub_c3d0c5d3[address(msg.sender)].field_256 = block.timestamp
        sub_c3d0c5d3[address(msg.sender)].field_512 = block.timestamp + 600
}

function _fallback() payable {
    require msg.value >= 10^15
    call msg.sender with:
       value msg.value - 10^15 wei
         gas 2300 * is_zero(value) wei
    stor3[address(msg.sender)] = 1
    totalPlayers++
    stor2[stor0] = msg.sender
    sub_c3d0c5d3[address(msg.sender)].field_0 = 2 * 10^15
    sub_c3d0c5d3[address(msg.sender)].field_256 = block.timestamp
    sub_c3d0c5d3[address(msg.sender)].field_512 = block.timestamp + 600
}



}
