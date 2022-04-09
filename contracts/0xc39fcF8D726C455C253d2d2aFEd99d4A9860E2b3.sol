contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
uint8 stor7;
array of uint256 stor8;
array of uint256 stor9;

function _fallback() payable {
    stor4 = 25 * 10^18
    mem[128] = 'H0.1'
    bool(stor9.length) = 0
    stor9.length.field_1 = 4
    stor9.length.field_8 = 'H0.1' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -4331] = code.data[5586 len -4331]
    stor5 = 25 * 10^10
    stor0 = 5 * 10^11
    stor1[0xd0f0d8e19c5c4afb1cba7e973ed98cc7b34e2807] = 81250 * 10^6
    stor1[0x2f932c0ac295403c5bb9496d5f01f8145e2ab725] = 81250 * 10^6
    stor1[0x2f932c0ac295403c5bb9496d5f01f8145e2ab725] = 25 * 10^9
    stor1[0xeb97b66b8144b4e2918efcbb75f45061780106d6] = 25 * 10^9
    stor1[0x886006265065c6a41124f976e8a0c8056cd06a0b] = 12500 * 10^6
    stor1[0x17c17355ee0def96b603553b44f85175f1a63 * 3600] = 12500 * 10^6
    stor1[0x3823f36a37610b7eaed57d499fd9a1d97b2f3b4] = 12500 * 10^6
    stor6[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor7 = mem[223 len 1]
    stor8[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    require stor5 / 4000
    stor3 = 10^18 / stor5 / 4000
    return code.data[1255 len 4331]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 iCOPrice;
uint256 stor4;
uint256 sub_26cb81b3;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_26cb81b3(?) {
    return sub_26cb81b3
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function ICOPrice() {
    return iCOPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f00a1c70(?) {
    require sub_26cb81b3 / 4000
    iCOPrice = 10^18 / sub_26cb81b3 / 4000
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value <= stor4:
        require iCOPrice
        balanceOf[address(msg.sender)] += msg.value / iCOPrice
        sub_26cb81b3 -= msg.value / iCOPrice
        require sub_26cb81b3 / 4000
        iCOPrice = 10^18 / sub_26cb81b3 / 4000
        call 0xd0f0d8e19c5c4afb1cba7e973ed98cc7b34e2807 with:
           value 325000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0xeb103261b80a322c09ce94580b114d5d6cc5b94a with:
           value 325000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x2f932c0ac295403c5bb9496d5f01f8145e2ab725 with:
           value 100000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0xeb97b66b8144b4e2918efcbb75f45061780106d6 with:
           value 100000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x886006265065c6a41124f976e8a0c8056cd06a0b with:
           value 50000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x14e1065e863a3f9375f8ede9179e3f98a9631030 with:
           value 50000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x03823f36a37610b7eaed57d499fd9a1d97b2f3b4 with:
           value 50000 * msg.value / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value msg.value - stor4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require iCOPrice
        balanceOf[address(msg.sender)] += stor4 / iCOPrice
        sub_26cb81b3 -= stor4 / iCOPrice
        require sub_26cb81b3 / 4000
        iCOPrice = 10^18 / sub_26cb81b3 / 4000
        call 0xd0f0d8e19c5c4afb1cba7e973ed98cc7b34e2807 with:
           value 325000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0xeb103261b80a322c09ce94580b114d5d6cc5b94a with:
           value 325000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x2f932c0ac295403c5bb9496d5f01f8145e2ab725 with:
           value 100000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0xeb97b66b8144b4e2918efcbb75f45061780106d6 with:
           value 100000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x886006265065c6a41124f976e8a0c8056cd06a0b with:
           value 50000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x14e1065e863a3f9375f8ede9179e3f98a9631030 with:
           value 50000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
        call 0x03823f36a37610b7eaed57d499fd9a1d97b2f3b4 with:
           value 50000 * stor4 / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
}



}
