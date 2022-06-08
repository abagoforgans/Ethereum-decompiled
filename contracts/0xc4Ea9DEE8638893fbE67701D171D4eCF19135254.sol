contract main {




// =====================  Runtime code  =====================


#
#  - startNewRound()
#
uint256 openAt;
uint8 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint8 stor7; offset 16
uint8 stor7; offset 24
address stor7; offset 32
uint256 stor10;
mapping of struct vaultOf;
address commanderAddress;
array of struct stor13;
array of struct stor14;

function vaultOf(address arg1) {
    return vaultOf[address(arg1)].field_0
}

function commander() {
    return commanderAddress
}

function conquesting() {
    return bool(uint8(stor7.field_16))
}

function lastFlight(address arg1) {
    return vaultOf[address(arg1)].field_256
}

function openAt() {
    return openAt
}

function _fallback() payable {
    revert
}

function getHivePot() {
    return (9 * stor3 * stor14.length / 10 * stor6 / 1000)
}

function setGameStatus(bool arg1) {
    require msg.sender == address(stor7.field_32)
    stor1 = uint8(arg1)
}

function getCommanderPot() {
    return ((9 * stor2 * stor13.length / 10 * stor4 / 100) + (9 * stor3 * stor14.length / 10 * stor5 / 100))
}

function getDronePot() {
    return (stor10 + (stor2 * stor13.length) + (stor3 * stor14.length) - (stor10 + (stor2 * stor13.length) + (stor3 * stor14.length) / 10) - (9 * stor3 * stor14.length / 10 * stor6 / 1000) - (9 * stor2 * stor13.length / 10 * stor4 / 100) - (9 * stor3 * stor14.length / 10 * stor5 / 100))
}

function withdrawVault() {
    require vaultOf[msg.sender].field_0 > 0
    vaultOf[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value vaultOf[msg.sender].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createCarrier() payable {
    require msg.value == stor2
    require block.timestamp >= openAt
    require uint8(stor7.field_0) > stor13.length
    idx = 0
    while uint8(idx) < stor13.length:
        mem[0] = 13
        if stor13[uint8(idx)].field_0 == msg.sender:
            revert with 0, 'Player already owns a hive'
        idx = idx + 1
        continue 
    stor13.length++
    stor13[stor13.length].field_0 = msg.sender
    emit onHiveCreated(stor13.length, block.timestamp, msg.sender);
}

function createCarrierFromVault() {
    require vaultOf[msg.sender].field_0 >= stor2
    vaultOf[address(msg.sender)].field_0 = vaultOf[msg.sender].field_0 - stor2
    require block.timestamp >= openAt
    require uint8(stor7.field_0) > stor13.length
    idx = 0
    while uint8(idx) < stor13.length:
        mem[0] = 13
        if stor13[uint8(idx)].field_0 == msg.sender:
            revert with 0, 'Player already owns a hive'
        idx = idx + 1
        continue 
    stor13.length++
    stor13[stor13.length].field_0 = msg.sender
    emit onHiveCreated(stor13.length, block.timestamp, msg.sender);
}

function createDrone() payable {
    require msg.value == stor3
    require uint8(stor7.field_0) == stor13.length
    require uint8(stor7.field_16)
    require block.timestamp > vaultOf[address(msg.sender)].field_256 + 60
    stor14.length++
    stor14[stor14.length].field_0 = msg.sender
    vaultOf[address(msg.sender)].field_256 = block.timestamp
    emit onDroneCreated(stor14.length, block.timestamp, msg.sender);
    if 42 == sha3(block.timestamp, block.difficulty, msg.sender, stor14.length.field_160, address(stor14.length)) % 289:
        uint8(stor7.field_16) = 0
        uint8(stor7.field_24) = 1
        emit onEnemyDestroyed(block.timestamp, msg.sender);
}

function getHives() {
    if stor13.length:
        mem[128] = address(stor13.field_0)
        if (32 * stor13.length) + 32 > 64:
            mem[160] = address(stor13.field_256)
            idx = 160
            s = 1
            while (32 * stor13.length) + 96 > idx:
                mem[idx + 32] = stor13[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor13.length) + 128] = 32
    mem[(32 * stor13.length) + 160] = stor13.length
    mem[(32 * stor13.length) + 192 len floor32(stor13.length)] = mem[128 len floor32(stor13.length)]
    return memory
      from (32 * stor13.length) + 128
       len (96 * stor13.length) + 64
}

function createDroneFromVault() {
    require vaultOf[msg.sender].field_0 >= stor3
    vaultOf[address(msg.sender)].field_0 = vaultOf[msg.sender].field_0 - stor3
    require uint8(stor7.field_0) == stor13.length
    require uint8(stor7.field_16)
    require block.timestamp > vaultOf[address(msg.sender)].field_256 + 60
    stor14.length++
    stor14[stor14.length].field_0 = msg.sender
    vaultOf[address(msg.sender)].field_256 = block.timestamp
    emit onDroneCreated(stor14.length, block.timestamp, msg.sender);
    if 42 == sha3(block.timestamp, block.difficulty, msg.sender, stor14.length.field_160, address(stor14.length)) % 289:
        uint8(stor7.field_16) = 0
        uint8(stor7.field_24) = 1
        emit onEnemyDestroyed(block.timestamp, msg.sender);
}

function getDrones() {
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
    return Array(len=stor14.length, data=mem[128 len floor32(stor14.length)], mem[(32 * stor14.length) + floor32(stor14.length) + 192 len (32 * stor14.length) - floor32(stor14.length)]), 
}



}
