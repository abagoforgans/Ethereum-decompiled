contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[54 len 2014]
}



// =====================  Runtime code  =====================


uint256 totalPlayers;
address contractOwner;
mapping of address players;
mapping of uint8 stor3;
mapping of uint256 sub_71dba7aa;
mapping of struct sub_5b4ebfc4;
mapping of struct sub_d2d38c62;

function isPlayer(address arg1) {
    return bool(stor3[arg1])
}

function Players(uint256 arg1) {
    return players[arg1]
}

function sub_5b4ebfc4(?) {
    return sub_5b4ebfc4[arg1].field_0, sub_5b4ebfc4[arg1].field_256, sub_5b4ebfc4[arg1].field_512
}

function sub_71dba7aa(?) {
    return sub_71dba7aa[arg1]
}

function contractOwner() {
    return contractOwner
}

function sub_d2d38c62(?) {
    return sub_d2d38c62[arg1].field_0, 
           sub_d2d38c62[arg1].field_256,
           sub_d2d38c62[arg1].field_512,
           sub_d2d38c62[arg1].field_768,
           sub_d2d38c62[arg1].field_1024
}

function totalPlayers() {
    return totalPlayers
}

function _fallback() {
    revert 
}

function Collect() payable {
    require msg.value <= 0
    if stor3[address(msg.sender)]:
        require sub_71dba7aa[address(msg.sender)] > 0
        call msg.sender with:
           value sub_71dba7aa[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}

function Mine() payable {
    require stor3[address(msg.sender)]
    require msg.value <= 0
    require block.timestamp >= sub_d2d38c62[address(msg.sender)].field_1024
    sub_71dba7aa[address(msg.sender)] += sub_d2d38c62[address(msg.sender)].field_256
    sub_d2d38c62[address(msg.sender)].field_768 = block.timestamp
    sub_d2d38c62[address(msg.sender)].field_1024 = block.timestamp + (8 * 3600)
}

function upgradeReactor() payable {
    require stor3[address(msg.sender)]
    require msg.value >= sub_5b4ebfc4[address(msg.sender)].field_512
    call msg.sender with:
       value msg.value - sub_5b4ebfc4[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    call contractOwner with:
       value 10 * sub_5b4ebfc4[address(msg.sender)].field_512 / 100 wei
         gas 2300 * is_zero(value) wei
    sub_5b4ebfc4[address(msg.sender)].field_0++
    sub_5b4ebfc4[address(msg.sender)].field_256 = 0
    sub_5b4ebfc4[address(msg.sender)].field_257 = sub_5b4ebfc4[address(msg.sender)].field_256
    sub_5b4ebfc4[address(msg.sender)].field_512 = 0
    sub_5b4ebfc4[address(msg.sender)].field_513 = sub_5b4ebfc4[address(msg.sender)].field_512
}

function newPlayer() payable {
    require msg.value >= 10^16
    call contractOwner with:
       value 10^15 wei
         gas 0 wei
    call msg.sender with:
       value msg.value - 10^16 wei
         gas 2300 * is_zero(value) wei
    stor3[address(msg.sender)] = 1
    totalPlayers++
    players[stor0] = msg.sender
    sub_5b4ebfc4[address(msg.sender)].field_0 = 1
    sub_5b4ebfc4[address(msg.sender)].field_256 = 5
    sub_5b4ebfc4[address(msg.sender)].field_512 = 2 * 10^12
    sub_d2d38c62[address(msg.sender)].field_0 = 1
    sub_d2d38c62[address(msg.sender)].field_256 = 8 * 10^11
    sub_d2d38c62[address(msg.sender)].field_512 = 10^12
    sub_d2d38c62[address(msg.sender)].field_768 = block.timestamp
    sub_d2d38c62[address(msg.sender)].field_1024 = block.timestamp + 60
}

function upgradeCrystalMine() payable {
    require stor3[address(msg.sender)]
    require sub_d2d38c62[address(msg.sender)].field_0 + 1 <= sub_5b4ebfc4[address(msg.sender)].field_256
    require msg.value >= sub_d2d38c62[address(msg.sender)].field_512
    call msg.sender with:
       value msg.value - sub_d2d38c62[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    call contractOwner with:
       value 10 * sub_d2d38c62[address(msg.sender)].field_512 / 100 wei
         gas 2300 * is_zero(value) wei
    sub_d2d38c62[address(msg.sender)].field_0++
    sub_d2d38c62[address(msg.sender)].field_256 += 5 * 10^10
    sub_d2d38c62[address(msg.sender)].field_512 = 0
    sub_d2d38c62[address(msg.sender)].field_513 = sub_d2d38c62[address(msg.sender)].field_512
}



}
