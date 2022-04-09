contract main {


// =======================  Init code  ======================


address stor0;
address stor6;
uint256 stor7;
uint256 stor8;
array of uint256 stor11;
array of uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;
uint8 stor15;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor12.length) = 0
    stor12.length.field_1 = 9
    stor12.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -7914] = code.data[8596 len -7914]
    stor6 = msg.sender
    stor7 = mem[160]
    stor8 = mem[192]
    stor13[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor14[] = Array(len=mem[mem[288] + 160], data=mem[mem[288] + 192 len mem[mem[288] + 160]])
    stor15 = mem[287 len 1]
    bool(stor11.length) = 0
    stor11.length.field_1 = 20
    stor11.length.field_8 = 'http://ipfs.io/ipfs/' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = 0x9ae98746eb8a0aeee5ff2b6b15875313a986f103
    return code.data[682 len 7914]
}



// =====================  Runtime code  =====================


address proofOfSmsAddress;
mapping of uint8 stor1;
array of struct publishedRegister;
uint256 numArticlesPublished;
address publishingOwner;
uint256 minSecondsBetweenPublishing;
uint256 maxTokensPerArticle;
uint256 timeOfLastPublish;
uint8 shieldsUp;
array of uint256 stor11;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function timeOfLastPublish() {
    return timeOfLastPublish
}

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

function maxTokensPerArticle() {
    return maxTokensPerArticle
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

function minSecondsBetweenPublishing() {
    return minSecondsBetweenPublishing
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
        shieldsUp = uint8(arg1)
}

function updateIpfsGateway(string arg1) {
    if msg.sender == publishingOwner:
        stor11[] = Array(len=arg1.length, data=arg1[all])
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

function getRemainingTokenForArticle(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function publish(string arg1, bytes32 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    if publishingOwner != msg.sender:
        emit PublishResult(1);
        revert
    if arg3 > maxTokensPerArticle:
        emit PublishResult(2);
        revert
    if block.timestamp - timeOfLastPublish < minSecondsBetweenPublishing:
        emit PublishResult(3);
        revert
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
        emit PublishResult(4);
        revert
    timeOfLastPublish = block.timestamp
    publishedRegister[stor5][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
    numArticlesPublished++
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 4
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg3
    emit PublishResult(3);
}

function claimReadership(uint256 arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not shieldsUp:
        if stor1[address(msg.sender)][arg1]:
            emit ClaimResult(2);
            revert
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = publishedRegister[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 4
        if stor[sha3(mem[ceil32(arg2.length) + 128 len stor3[arg1].length + 32])] <= 0:
            emit ClaimResult(3);
            revert
        mem[0] = sha3(arg1, 3)
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = mem[64]
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 2
        _1082 = sha3(mem[mem[64] len ceil32(arg2.length) + publishedRegister[arg1].length + -mem[64] + 160])
        _1083 = mem[64]
        _1084 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        if sha3(mem[mem[64] len _1084 + _1083 - mem[64]]) != stor[_1082]:
            emit ClaimResult(4);
            revert
        if balanceOf[address(msg.sender)] + 1 < balanceOf[address(msg.sender)]:
            emit ClaimResult(5);
            revert
        _1224 = mem[64]
        mem[0] = sha3(arg1, 3)
        mem[mem[64]] = publishedRegister[arg1].field_0
        idx = mem[64]
        s = 0
        while _1224 + publishedRegister[arg1].length > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1224 + publishedRegister[arg1].length] = 4
        stor[sha3(mem[mem[64] len _1224 + stor3[arg1].length + -mem[64] + 32])]--
    else:
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = msg.sender
        require ext_code.size(proofOfSmsAddress)
        call proofOfSmsAddress.certified(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            emit ClaimResult(1);
            revert
        if stor1[address(msg.sender)][arg1]:
            emit ClaimResult(2);
            revert
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = ceil32(arg2.length) + 128
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = publishedRegister[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 4
        if stor[sha3(mem[ceil32(arg2.length) + 128 len stor3[arg1].length + 32])] <= 0:
            emit ClaimResult(3);
            revert
        mem[0] = sha3(arg1, 3)
        mem[ceil32(arg2.length) + 128] = publishedRegister[arg1].field_0
        idx = mem[64]
        s = 0
        while ceil32(arg2.length) + publishedRegister[arg1].length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg2.length) + publishedRegister[arg1].length + 128] = 2
        _1086 = sha3(mem[mem[64] len ceil32(arg2.length) + publishedRegister[arg1].length + -mem[64] + 160])
        _1087 = mem[64]
        _1088 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        if sha3(mem[mem[64] len _1088 + _1087 - mem[64]]) != stor[_1086]:
            emit ClaimResult(4);
            revert
        if balanceOf[address(msg.sender)] + 1 < balanceOf[address(msg.sender)]:
            emit ClaimResult(5);
            revert
        _1226 = mem[64]
        mem[0] = sha3(arg1, 3)
        mem[mem[64]] = publishedRegister[arg1].field_0
        idx = mem[64]
        s = 0
        while _1226 + publishedRegister[arg1].length > idx + 32:
            mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[_1226 + publishedRegister[arg1].length] = 4
        stor[sha3(mem[mem[64] len _1226 + stor3[arg1].length + -mem[64] + 32])]--
    totalSupply++
    stor1[address(msg.sender)][arg1] = 1
    balanceOf[address(msg.sender)]++
    emit ClaimResult(0);
}



}
