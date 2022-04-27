contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'Experty Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'EXY' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    Mask(96, 0, stor2.field_160) = 1
    stor3 = 1000
    require not msg.value
    address(stor2.field_0) = msg.sender
    stor4[address(stor2.field_0)] = 1000
    return code.data[571 len 4540]
}



// =====================  Runtime code  =====================


const howManyEtherInWeiToChangeSymbolName = 400 * 10^18

const decimals = 18

const howManyEtherInWeiToBecomeOwner = 1000 * 10^18

const howManyEtherInWeiToKillContract = 500 * 10^18

const tokensPerEth = 1


array of uint256 name;
array of uint256 symbol;
uint8 stor2; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor5;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function funding() {
    return bool(stor2)
}

function killContract() payable {
    if owner != msg.sender:
        if msg.value < 500 * 10^18:
    selfdestruct(owner)
}

function mintTo(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    stor5[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor2
    require msg.value
    require totalSupply
    totalSupply += msg.value * 1000 / totalSupply
    balanceOf[address(msg.sender)] += msg.value * 1000 / totalSupply
    emit Transfer((msg.value * 1000 / totalSupply), 0, msg.sender);
}

function changeOwner(address arg1) payable {
    if msg.value >= 1000 * 10^18:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor5[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    stor5[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}

function changeNameSymbol(string arg1, string arg2) payable {
    if msg.sender == owner:
        name.length = (2 * arg1.length) + 1
        s = 0
        idx = arg1 + 36
        while arg1 + arg1.length + 36 > idx:
            name[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while name.length + 31 / 32 > idx:
            name[idx] = 0
            idx = idx + 1
            continue 
        symbol.length = (2 * arg2.length) + 1
        s = 0
        idx = arg2 + 36
        while arg2 + arg2.length + 36 > idx:
            symbol[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while symbol.length + 31 / 32 > idx:
            symbol[idx] = 0
            idx = idx + 1
            continue 
    else:
        if msg.value >= 400 * 10^18:
            name.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                name[s] = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while name.length + 31 / 32 > idx:
                name[idx] = 0
                idx = idx + 1
                continue 
            symbol.length = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                symbol[s] = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while symbol.length + 31 / 32 > idx:
                symbol[idx] = 0
                idx = idx + 1
                continue 
}



}
