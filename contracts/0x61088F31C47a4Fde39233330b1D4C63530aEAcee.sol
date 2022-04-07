contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 2555]




// =====================  Runtime code  =====================


uint256 totalPlayers;
address owner;
mapping of address stor2;
mapping of uint8 stor3;
mapping of uint256 sub_4418d0b7;
mapping of struct sub_0271b3fe;

function sub_0271b3fe(?) {
    return sub_0271b3fe[arg1].field_0, sub_0271b3fe[arg1].field_256, sub_0271b3fe[arg1].field_512
}

function sub_4418d0b7(?) {
    return sub_4418d0b7[arg1]
}

function owner() {
    return owner
}

function totalPlayers() {
    return totalPlayers
}

function Kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function addBankroll() payable {
  stop
}

function Game() {
    owner = msg.sender
}

function sub_af150c25(?) {
    if owner != msg.sender:
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
    if block.timestamp >= sub_0271b3fe[address(msg.sender)].field_512:
        sub_4418d0b7[address(msg.sender)] += sub_0271b3fe[address(msg.sender)].field_0
        sub_0271b3fe[address(msg.sender)].field_256 = block.timestamp
        sub_0271b3fe[address(msg.sender)].field_512 = block.timestamp + 300
}

function _fallback() payable {
    if msg.value < 10^15:
        require msg.value >= 10^16
    call msg.sender with:
       value msg.value - 10^15 wei
         gas 2300 * is_zero(value) wei
    stor3[address(msg.sender)] = 1
    totalPlayers++
    stor2[stor0] = msg.sender
    sub_0271b3fe[address(msg.sender)].field_0 = 2 * 10^15
    sub_0271b3fe[address(msg.sender)].field_256 = block.timestamp
    sub_0271b3fe[address(msg.sender)].field_512 = block.timestamp + 600
}



}
