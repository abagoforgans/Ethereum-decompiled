contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor8;
mapping of uint256 stor9;
mapping of struct stor11;
array of uint256 stor12;

function _fallback() {
    stor0 = msg.sender
    stor8 = code.data[10026 len 32]
    stor9[stor0] = code.data[9930 len 32]
    require msg.sender == stor0
    stor1 = 10^15 * code.data[9962 len 32]
    stor2 = 10^15 * code.data[9994 len 32]
    stor3 = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'Beether' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'beeth' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 2
    stor12.length++
    if not stor12.length <= stor12.length + 1:
        idx = stor12.length + 1
        while stor12.length > idx:
            stor12[idx] = 0
            idx = idx + 1
            continue 
    stor12[stor12.length] = 1509302402021
    stor3++
    stor11[1509302402021].field_0 = msg.sender
    stor11[1509302402021].field_256 = 0
    stor11[1509302402021].field_512 = 3
    stor11[1509302402021].field_768 = 1509302402021
    stor11[1509302402021].field_1024 = 0
    stor11[1509302402021].field_1280 = 0
    stor11[1509302402021].field_1536 = 0
    stor11[1509302402021].field_1792 = 0
    stor11[1509302402021].field_2048 = 0
    stor11[1509302402021].field_2304 = 0
    stor11[1509302402021].field_2560 = 0
    stor11[1509302402021].field_2816 = 0
    stor11[1509302402021].field_2568 = 0
    return code.data[1455 len 8475]
}



// =====================  Runtime code  =====================


#
#  - crearCelda(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint8 arg6)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 numeroCeldas;
uint256 stor7;
uint256 fechaTax;
mapping of uint256 balance;
array of address stor10;
mapping of struct celda;
array of uint256 stor12;

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function getCelda(uint256 arg1) {
    require arg1 < stor12.length
    require celda[stor12[arg1]].field_2560 <= 5
    require celda[stor12[arg1]].field_2560 <= 5
    return celda[stor12[arg1]].field_0, 
           celda[stor12[arg1]].field_256,
           celda[stor12[arg1]].field_512,
           celda[stor12[arg1]].field_768,
           celda[stor12[arg1]].field_1024,
           celda[stor12[arg1]].field_1280,
           celda[stor12[arg1]].field_1536,
           celda[stor12[arg1]].field_1792,
           celda[stor12[arg1]].field_2048,
           celda[stor12[arg1]].field_2304,
           celda[stor12[arg1]].field_2560,
           bool(celda[stor12[arg1]].field_2568)
}

function getFechaTax() {
    return fechaTax
}

function getNumeroCeldas() {
    return numeroCeldas
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function setFechaTax(uint256 arg1) {
    require msg.sender == owner
    fechaTax = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    stor1 = 10^15 * arg1
    stor2 = 10^15 * arg2
}

function getRevenue(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function cobrarImpuesto(uint256 arg1) {
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < stor7:
        require idx < stor10.length
        mem[0] = address(stor10[idx])
        mem[32] = 9
        if balance[address(stor10[idx])] > 0:
            require owner
            require balance[address(stor10[idx])] >= 1
            require balance[stor0] + 1 > balance[stor0]
            balance[address(stor10[idx])]--
            mem[0] = owner
            mem[32] = 9
            balance[stor0]++
            mem[96] = 1
            emit Transfer(1, address(stor10[idx]), owner);
        s = address(stor10[idx])
        idx = idx + 1
        continue 
    fechaTax = arg1
}

function incluirUsuario(address arg1) {
    s = 0
    idx = 0
    s = 0
    while idx < stor7:
        require idx < stor10.length
        mem[0] = 10
        if address(stor10[idx]) != arg1:
            s = address(stor10[idx])
            idx = idx + 1
            s = s
            continue 
        s = address(stor10[idx])
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        stor7++
}

function sell(uint256 arg1) {
    require balance[address(msg.sender)] >= arg1
    require owner
    require balance[address(msg.sender)] >= arg1
    require balance[stor0] + arg1 > balance[stor0]
    balance[address(msg.sender)] -= arg1
    balance[stor0] += arg1
    emit Transfer(arg1, msg.sender, owner);
    call msg.sender with:
       value arg1 * stor1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Transfer((arg1 * stor1), msg.sender, owner);
    else:
        require msg.sender
        require balance[stor0] >= arg1
        require balance[address(msg.sender)] + arg1 > balance[address(msg.sender)]
        balance[stor0] -= arg1
        balance[address(msg.sender)] += arg1
        emit Transfer(arg1, owner, msg.sender);
        emit TransferKO((arg1 * stor1), msg.sender, this.address);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balance[address(msg.sender)] >= arg2
    require balance[address(arg1)] + arg2 > balance[address(arg1)]
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    s = 0
    idx = 0
    s = 0
    while idx < stor7:
        require idx < stor10.length
        mem[0] = 10
        if address(stor10[idx]) != arg1:
            s = address(stor10[idx])
            idx = idx + 1
            s = s
            continue 
        s = address(stor10[idx])
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg1
        stor7++
}

function buy() payable {
    require stor2
    require balance[stor0] >= msg.value / stor2
    require msg.sender
    require balance[stor0] >= msg.value / stor2
    require balance[address(msg.sender)] + (msg.value / stor2) > balance[address(msg.sender)]
    balance[stor0] -= msg.value / stor2
    balance[address(msg.sender)] += msg.value / stor2
    emit Transfer((msg.value / stor2), owner, msg.sender);
    s = 0
    idx = 0
    s = 0
    while idx < stor7:
        require idx < stor10.length
        mem[0] = 10
        if address(stor10[idx]) != msg.sender:
            s = address(stor10[idx])
            idx = idx + 1
            s = s
            continue 
        s = address(stor10[idx])
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = msg.sender
        stor7++
    emit Transfer((msg.value / stor2), owner, msg.sender);
    return (msg.value / stor2)
}



}
