contract main {


// =======================  Init code  ======================


address stor0;
address stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint8 stor10;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor7.length) = 0
    stor7.length.field_1 = 9
    stor7.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -6297] = code.data[6945 len -6297]
    stor5 = msg.sender
    stor8[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor9[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor10 = mem[223 len 1]
    bool(stor6.length) = 0
    stor6.length.field_1 = 20
    stor6.length.field_8 = 'http://ipfs.io/ipfs/' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = 0x9ae98746eb8a0aeee5ff2b6b15875313a986f103
    return code.data[648 len 6297]
}



// =====================  Runtime code  =====================


address proofOfSmsAddress;
mapping of uint8 stor1;
array of struct publishedRegister;
uint256 numArticlesPublished;
uint8 shieldsUp; offset 160
uint128 stor5; offset 160
address publishingOwner;
array of uint256 stor6;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor99;

function publishingOwner() {
    return publishingOwner
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function hasReadership(address arg1, uint256 arg2) {
    return bool(stor1[address(arg1)][arg2])
}

function decimals() {
    return decimals
}

function shieldsUp() {
    return bool(shieldsUp)
}

function standard() {
    return standard[0 len standard.length]
}

function numArticlesPublished() {
    return numArticlesPublished
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function readingRegister(address arg1, uint256 arg2) {
    return bool(stor1[arg1][arg2])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function publishedRegister(uint256 arg1) {
    return publishedRegister[arg1][0 len publishedRegister[arg1].length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function proofOfSms() {
    return proofOfSmsAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setSmsCertificationRequired(bool arg1) {
    if msg.sender == publishingOwner:
        stor5 = Mask(96, 0, arg1)
}

function updateIpfsGateway(string arg1) {
    if msg.sender == publishingOwner:
        stor6[] = Array(len=arg1.length, data=arg1[all])
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function publish(string arg1, bytes32 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == publishingOwner:
        publishedRegister[stor4][].field_0 = Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 2
        stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
        numArticlesPublished++
}

function claimReadership(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    if not shieldsUp:
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        require not stor1[address(msg.sender)][arg1]
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = publishedRegister[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 2
        _102 = sha3(mem[ceil32(arg2.length) + 128 len publishedRegister[arg1].length + 32])
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == stor[_102]
    else:
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = msg.sender
        require ext_code.size(proofOfSmsAddress)
        call proofOfSmsAddress.certified(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + 1 >= balanceOf[address(msg.sender)]
        require not stor1[address(msg.sender)][arg1]
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = publishedRegister[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 2
        _106 = sha3(mem[ceil32(arg2.length) + 128 len publishedRegister[arg1].length + 32])
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == stor[_106]
    stor1[address(msg.sender)][arg1] = 1
    balanceOf[address(msg.sender)]++
    totalSupply++
}



}
