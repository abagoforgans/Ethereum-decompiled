contract main {




// =====================  Runtime code  =====================


uint256 vigencia;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
array of struct tokenMineSupply;
uint256 _MineId;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct participatingMines;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function _MineId() {
    return _MineId
}

function decimals() {
    return decimals
}

function TokenMineSupply(uint256 arg1) {
    require arg1 < tokenMineSupply.length
    return tokenMineSupply[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function vigencia() {
    return vigencia
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function participatingMines(uint256 arg1) {
    mem[128] = participatingMines[arg1][1].field_0
    idx = 128
    s = 0
    while participatingMines[arg1][1].length + 96 > idx:
        mem[idx + 32] = participatingMines[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return participatingMines[arg1].field_0, 
           Array(len=participatingMines[arg1][1].length, data=mem[128 len participatingMines[arg1][1].length]),
           participatingMines[arg1].field_512,
           bool(participatingMines[arg1].field_768)
}

function approve(address arg1, uint256 arg2) {
    if 0 == totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function addToken(uint256 arg1) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    emit AddToken(arg1, msg.sender);
    require arg1 + balanceOf[stor5] >= balanceOf[stor5]
    require arg1 + balanceOf[stor5] >= arg1
    balanceOf[stor5] += arg1
    return 1
}

function ModifyMine(uint256 arg1, bool arg2, string arg3, uint256 arg4) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    stor9 = 0
    stor10 = 0
    stor11 = totalSupply
    stor12 = 0
    participatingMines[arg1].field_768 = uint8(arg2)
    participatingMines[arg1][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    participatingMines[arg1].field_512 = arg4
    require arg1 < tokenMineSupply.length
    stor9 = tokenMineSupply[arg1].field_0
    if arg4 > tokenMineSupply[arg1].field_0:
        require arg1 < tokenMineSupply.length
        tokenMineSupply[arg1].field_0 = arg4
    else:
        require arg4 <= stor9
        stor10 = stor9 - arg4
        require arg1 < tokenMineSupply.length
        require stor10 <= tokenMineSupply[arg1].field_0
        require arg1 < tokenMineSupply.length
        tokenMineSupply[arg1].field_0 -= stor10
    stor8 = 0
    idx = 0
    while uint8(idx) < tokenMineSupply.length:
        mem[0] = 6
        require stor8 + tokenMineSupply[uint8(idx)].field_0 >= tokenMineSupply[uint8(idx)].field_0
        require stor8 + tokenMineSupply[uint8(idx)].field_0 >= stor8
        stor8 += tokenMineSupply[uint8(idx)].field_0
        idx = idx + 1
        continue 
    emit MineUpdated(arg1, Array(len=arg3.length, data=arg3[all]), arg4, arg2);
    totalSupply = stor8
    if stor11 < stor8:
        require stor11 <= totalSupply
        stor12 = totalSupply - stor11
        require msg.sender == owner
        if not totalSupply:
            selfdestruct(owner)
        require block.timestamp < vigencia
        emit AddToken((totalSupply - stor11), msg.sender);
        require totalSupply - stor11 + balanceOf[stor5] >= balanceOf[stor5]
        require balanceOf[stor5] >= 0
        balanceOf[stor5] = totalSupply - stor11 + balanceOf[stor5]
    if totalSupply < stor11:
        require totalSupply <= stor11
        stor12 = stor11 - totalSupply
        require msg.sender == owner
        if not totalSupply:
            selfdestruct(owner)
        require block.timestamp < vigencia
        require stor11 - totalSupply <= balanceOf[msg.sender]
        require stor11 - totalSupply > 0
        require stor11 - totalSupply <= balanceOf[msg.sender]
        balanceOf[msg.sender] = balanceOf[msg.sender] - stor11 + totalSupply
        emit Burn((stor11 - totalSupply), msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if 0 == totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transferFromRoot(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function RegisterMine(string arg1, uint256 arg2) {
    require msg.sender == owner
    if stor13:
        if not totalSupply:
            selfdestruct(owner)
    else:
        stor13 = 1
    require block.timestamp < vigencia
    participatingMines[stor7].field_0 = _MineId
    participatingMines[stor7][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    participatingMines[stor7].field_512 = arg2
    participatingMines[stor7].field_768 = 1
    tokenMineSupply.length++
    tokenMineSupply[tokenMineSupply.length].field_0 = arg2
    stor8 = 0
    idx = 0
    while uint8(idx) < tokenMineSupply.length:
        mem[0] = 6
        require stor8 + tokenMineSupply[uint8(idx)].field_0 >= tokenMineSupply[uint8(idx)].field_0
        require stor8 + tokenMineSupply[uint8(idx)].field_0 >= stor8
        stor8 += tokenMineSupply[uint8(idx)].field_0
        idx = idx + 1
        continue 
    totalSupply = stor8
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    emit AddToken(arg2, msg.sender);
    require arg2 + balanceOf[stor5] >= balanceOf[stor5]
    require arg2 + balanceOf[stor5] >= arg2
    balanceOf[stor5] += arg2
    emit MineCreated(_MineId, Array(len=arg1.length, data=arg1[all]), arg2);
    require _MineId + 1 >= _MineId
    require _MineId + 1 >= 1
    _MineId++
}

function ModifyVigencia(uint256 arg1) {
    require msg.sender == owner
    if not totalSupply:
        selfdestruct(owner)
    vigencia = arg1
}

function transfer(address arg1, uint256 arg2) {
    if not totalSupply:
        selfdestruct(owner)
    require block.timestamp < vigencia
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
  stop
}

function getTokenByMineID() {
    if not tokenMineSupply.length:
        mem[(32 * tokenMineSupply.length) + 128] = 32
        mem[(32 * tokenMineSupply.length) + 160] = tokenMineSupply.length
        mem[(32 * tokenMineSupply.length) + 192 len floor32(tokenMineSupply.length)] = mem[128 len floor32(tokenMineSupply.length)]
        return memory
          from (32 * tokenMineSupply.length) + 128
           len (96 * tokenMineSupply.length) + 64
    mem[128] = uint256(tokenMineSupply.field_0)
    idx = 128
    s = 0
    while (32 * tokenMineSupply.length) + 96 > idx:
        mem[idx + 32] = tokenMineSupply[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenMineSupply.length) + 192 len floor32(tokenMineSupply.length)] = mem[128 len floor32(tokenMineSupply.length)]
    return Array(len=tokenMineSupply.length, data=mem[128 len floor32(tokenMineSupply.length)], mem[(32 * tokenMineSupply.length) + floor32(tokenMineSupply.length) + 192 len (32 * tokenMineSupply.length) - floor32(tokenMineSupply.length)]), 
}



}
