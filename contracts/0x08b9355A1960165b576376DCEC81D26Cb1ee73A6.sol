contract main {


// =======================  Init code  ======================


address stor5;
address stor6;
uint8 stor8;

function _fallback() payable {
    stor6 = 0x46937732313a6c856354f4e5ea012dfd10186b9a
    require not msg.value
    stor5 = msg.sender
    stor8 = 0
    return code.data[210 len 11797]
}



// =====================  Runtime code  =====================


array of struct games;
array of struct founders;
array of struct stor2;
mapping of uint256 stor3;
mapping of address withdraw;
address adminAddress;
address coldAdminAddress;
uint256 costToCreateGame;
uint8 stor8;

function coldAdmin() {
    return coldAdminAddress
}

function games(uint256 arg1) {
    require arg1 < games.length
    return games[arg1].field_0
}

function getWithdraw(address arg1) {
    return withdraw[address(arg1)]
}

function isDisabled() {
    return bool(stor8)
}

function costToCreateGame() {
    return costToCreateGame
}

function founders(uint256 arg1) {
    require arg1 < founders.length
    return founders[arg1].field_0
}

function admin() {
    return adminAddress
}

function setDisabled(bool arg1) {
    require msg.sender == adminAddress
    stor8 = uint8(arg1)
}

function setCostToCreateGame(uint256 arg1) {
    require msg.sender == adminAddress
    costToCreateGame = arg1
}

function setAdmin(address arg1) {
    if adminAddress != msg.sender:
        require msg.sender == coldAdminAddress
    adminAddress = arg1
}

function _fallback() payable {
    call adminAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getFoundersGames(address arg1) {
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
        mem[(32 * stor2[address(arg1)].field_0) + 224 len floor32(stor2[address(arg1)].field_0)] = mem[160 len floor32(stor2[address(arg1)].field_0)]
        return memory
          from (32 * stor2[address(arg1)].field_0) + 160
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[160] = stor2[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 224 len floor32(stor2[address(arg1)].field_0)] = mem[160 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[160 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 224 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function getInfo() {
    if games.length:
        mem[192] = address(games.field_0)
        idx = 192
        s = 0
        while (32 * games.length) + 160 > idx:
            mem[idx + 32] = games[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if founders.length:
        mem[(32 * games.length) + 224] = address(founders.field_0)
        idx = (32 * games.length) + 224
        s = 0
        while (32 * games.length) + (32 * founders.length) + 192 > idx:
            mem[idx + 32] = founders[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * games.length) + (32 * founders.length) + 416 len floor32(games.length)] = mem[192 len floor32(games.length)]
    mem[(64 * games.length) + (32 * founders.length) + 416] = founders.length
    mem[(64 * games.length) + (32 * founders.length) + 448 len floor32(founders.length)] = mem[(32 * games.length) + 224 len floor32(founders.length)]
    return Array(len=games.length, data=mem[192 len floor32(games.length)], mem[(32 * games.length) + (32 * founders.length) + floor32(games.length) + 416 len (32 * games.length) + (32 * founders.length) + -floor32(games.length) + 32]), 
           (32 * games.length) + 192,
           adminAddress,
           costToCreateGame,
           bool(stor8)
}

function createGame(uint256 arg1, uint256 arg2) payable {
    require not stor8
    if costToCreateGame > 0:
        require msg.value == costToCreateGame
    if msg.value > 0:
        call adminAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[4463 len 5865]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeGameParameters(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    games.length++
    if not games.length <= games.length + 1:
        idx = games.length + 1
        while games.length > idx:
            games[idx].field_0 = 0
            idx = idx + 1
            continue 
    games[games.length].field_0 = address(create.new_address)
    if not stor2[address(msg.sender)].field_0:
        founders.length++
        if not founders.length <= founders.length + 1:
            idx = founders.length + 1
            while founders.length > idx:
                founders[idx].field_0 = 0
                idx = idx + 1
                continue 
        founders[founders.length].field_0 = msg.sender
    stor2[address(msg.sender)].field_0++
    if not stor2[address(msg.sender)].field_0 <= stor2[address(msg.sender)].field_0 + 1:
        idx = stor2[address(msg.sender)].field_0 + 1
        while stor2[address(msg.sender)].field_0 > idx:
            stor2[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[10328 len 1426]
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setKtcAddress(address arg1, bool arg2) with:
         gas gas_remaining - 710 wei
        args address(create.new_address), 1
    require ext_call.success
    withdraw[address(create.new_address)] = address(create.new_address)
    stor3[address(create.new_address)] = block.number
    emit GameCreated(address(msg.sender), address(create.new_address), address(create.new_address), arg1, arg2);
}



}
