contract main {




// =====================  Runtime code  =====================


#
#  - issueAndContribute(address arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8)
#  - issueBounty(address arg1, address[] arg2, address[] arg3, string arg4, uint256 arg5, address arg6, uint256 arg7)
#
uint256 numBounties;
mapping of uint8 stor2;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address metaTxRelayerAddress;

function callStarted() {
    return bool(uint8(stor4.field_160))
}

function numBounties() {
    return numBounties
}

function owner() {
    return owner
}

function metaTxRelayer() {
    return metaTxRelayerAddress
}

function bounties(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bounties[arg1].field_512, 
           bounties[arg1].field_768,
           bounties[arg1].field_1024,
           bounties[arg1].field_1280,
           bool(bounties[arg1].field_1536)
}

function tokenBalances(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function _fallback() payable {
    revert
}

function setMetaTxRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not metaTxRelayerAddress
    metaTxRelayerAddress = arg1
}

function changeDeadline(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    bounties[arg2].field_512 = arg4
    emit BountyDeadlineChanged(arg2, address(arg1), arg4);
}

function changeIssuer(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg4 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    if arg3 >= bounties[arg2].field_0:
        require not arg3
    require arg4 < bounties[arg2].field_0
    bounties[arg2][arg4].field_0 = arg5
    idx = 0
    s = 0
    t = 224
    while idx < bounties[arg2].field_0:
        mem[t] = bounties[arg2][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xc969620b: arg2, address(arg1), Array(len=bounties[arg2].field_0, data=mem[224 len 32 * bounties[arg2].field_0])
}

function changeApprover(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    require arg4 < bounties[arg2].field_256
    require arg4 < bounties[arg2].field_256
    stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg4].field_0 = arg5
    idx = 0
    s = 0
    t = 224
    while idx < bounties[arg2].field_256:
        mem[t] = bounties[arg2][s + 1].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit BountyApproversUpdated(arg2, address(arg1), Array(len=bounties[arg2].field_256, data=mem[224 len 32 * bounties[arg2].field_256]));
}

function performAction(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg3.length) + 224] = arg3.length
    emit ActionPerformed(uint256 arg1, address arg2, string arg3):
                         Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                         mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 96],
}

function changeData(address arg1, uint256 arg2, uint256 arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    mem[ceil32(arg4.length) + 128] = arg2
    mem[ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg4.length) + 192] = 96
    mem[ceil32(arg4.length) + 224] = arg4.length
    emit BountyDataChanged(uint256 arg1, address arg2, string arg3):
                           Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                           mem[arg4.length + 160 len (2 * ceil32(arg4.length)) + -arg4.length + 96],
}

function addIssuers(address arg1, uint256 arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    idx = 0
    while idx < arg4.length:
        mem[32] = 1
        require idx < arg4.length
        bounties[arg2].field_0++
        mem[0] = sha3(arg2, 1)
        bounties[arg2][bounties[arg2].field_0].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = (32 * arg4.length) + 256
    while idx < bounties[arg2].field_0:
        mem[t] = bounties[arg2][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xc969620b: arg2, address(arg1), Array(len=bounties[arg2].field_0, data=mem[(32 * arg4.length) + 256 len 32 * bounties[arg2].field_0])
}

function addApprovers(address arg1, uint256 arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    idx = 0
    while idx < arg4.length:
        mem[32] = 1
        require idx < arg4.length
        bounties[arg2].field_256++
        mem[0] = sha3(arg2, 1) + 1
        stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + bounties[arg2].field_256].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = (32 * arg4.length) + 256
    while idx < bounties[arg2].field_256:
        mem[t] = bounties[arg2][s + 1].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit BountyApproversUpdated(arg2, address(arg1), Array(len=bounties[arg2].field_256, data=mem[(32 * arg4.length) + 256 len 32 * bounties[arg2].field_256]));
}

function replaceIssuers(address arg1, uint256 arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    if arg4.length <= 0:
        require bounties[arg2].field_256 > 0
    bounties[arg2].field_0 = arg4.length
    if not arg4.length:
        idx = 0
        while bounties[arg2].field_0 > idx:
            bounties[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            bounties[arg2][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while bounties[arg2].field_0 > idx:
            bounties[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = (32 * arg4.length) + 256
    while idx < bounties[arg2].field_0:
        mem[t] = bounties[arg2][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0xc969620b: arg2, address(arg1), Array(len=bounties[arg2].field_0, data=mem[(32 * arg4.length) + 256 len 32 * bounties[arg2].field_0])
}

function replaceApprovers(address arg1, uint256 arg2, uint256 arg3, address[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_0
    require arg3 < bounties[arg2].field_0
    require arg1 == bounties[arg2][arg3].field_0
    if bounties[arg2].field_0 <= 0:
        require arg4.length > 0
    bounties[arg2].field_256 = arg4.length
    if not arg4.length:
        idx = 0
        while bounties[arg2].field_256 > idx:
            bounties[arg2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while bounties[arg2].field_256 > idx:
            bounties[arg2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = (32 * arg4.length) + 256
    while idx < bounties[arg2].field_256:
        mem[t] = bounties[arg2][s + 1].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit BountyApproversUpdated(arg2, address(arg1), Array(len=bounties[arg2].field_256, data=mem[(32 * arg4.length) + 256 len 32 * bounties[arg2].field_256]));
}

function contribute(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    require arg3 > 0
    bounties[arg2].field_2048++
    stor[(3 * bounties[arg2].field_2048) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg1
    stor[(3 * bounties[arg2].field_2048) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg3
    stor[(3 * bounties[arg2].field_2048) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 0
    if not bounties[arg2].field_1024:
        require bounties[arg2].field_1280 + arg3 >= bounties[arg2].field_1280
        bounties[arg2].field_1280 += arg3
        require msg.value == arg3
    else:
        if bounties[arg2].field_1024 != 20:
            require bounties[arg2].field_1024 == 721
            stor2[arg2][arg3] = 1
            require not msg.value
            require ext_code.size(bounties[arg2].field_768)
            call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require bounties[arg2].field_1280 + arg3 >= bounties[arg2].field_1280
            bounties[arg2].field_1280 += arg3
            require not msg.value
            require ext_code.size(bounties[arg2].field_768)
            call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit 0x7431e5e3: arg2, bounties[arg2].field_2048 - 1, address(arg1), arg3
    Mask(96, 0, stor4.field_160) = 0
}

function updateFulfillment(address arg1, uint256 arg2, uint256 arg3, address[] arg4, string arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg4.length) + ceil32(arg5.length) + 160 <= test266151307() and ceil32(arg5.length) + 160 >= 128
    mem[(32 * arg4.length) + 128] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg4.length) + 160 len arg5.length] = arg5[all]
    mem[(32 * arg4.length) + arg5.length + 160] = 0
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_1792
    require arg3 < bounties[arg2].field_1792
    require arg1 == stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
    require arg3 < bounties[arg2].field_1792
    stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg4.length
    if not arg4.length:
        idx = 0
        while stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
            stor[idx + sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            stor[s + sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
            stor[idx + sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
            idx = idx + 1
            continue 
    mem[(32 * arg4.length) + ceil32(arg5.length) + 160] = arg2
    mem[(32 * arg4.length) + ceil32(arg5.length) + 192] = arg3
    mem[(32 * arg4.length) + ceil32(arg5.length) + 224] = 128
    mem[(32 * arg4.length) + ceil32(arg5.length) + 288] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg4.length) + ceil32(arg5.length) + 320
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg4.length) + ceil32(arg5.length) + 256] = (32 * arg4.length) + 160
    mem[(64 * arg4.length) + ceil32(arg5.length) + 320] = arg5.length
    s = 0
    while arg4.length < arg5.length:
        mem[(67 * arg4.length) + ceil32(arg5.length) + 352] = mem[(34 * arg4.length) + 160]
        s = arg4.length + 32
        continue 
    if arg4.length > arg5.length:
        mem[(64 * arg4.length) + ceil32(arg5.length) + arg5.length + 352] = 0
    emit 0xde0d52ad: mem[(32 * arg4.length) + ceil32(arg5.length) + 160 len (96 * arg4.length) + ceil32(arg5.length) + 192]
}

function fulfillBounty(address arg1, uint256 arg2, address[] arg3, string arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg3.length) + ceil32(arg4.length) + 160 <= test266151307() and ceil32(arg4.length) + 160 >= 128
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg3.length) + 160 len arg4.length] = arg4[all]
    mem[(32 * arg3.length) + arg4.length + 160] = 0
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require block.timestamp < bounties[arg2].field_512
    require arg3.length > 0
    mem[(32 * arg3.length) + ceil32(arg4.length) + 160] = 96
    mem[(32 * arg3.length) + ceil32(arg4.length) + 192] = arg1
    bounties[arg2].field_1792++
    stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
            stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            stor[s + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
            stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
            idx = idx + 1
            continue 
    stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
    mem[(32 * arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[(32 * arg3.length) + ceil32(arg4.length) + 256] = bounties[arg2].field_1792 - 1
    mem[(32 * arg3.length) + ceil32(arg4.length) + 288] = 160
    mem[(32 * arg3.length) + ceil32(arg4.length) + 384] = arg3.length
    idx = 0
    s = 128
    t = (32 * arg3.length) + ceil32(arg4.length) + 416
    while idx < arg3.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg3.length) + ceil32(arg4.length) + 320] = (32 * arg3.length) + 192
    mem[(64 * arg3.length) + ceil32(arg4.length) + 416] = arg4.length
    s = 0
    while arg3.length < arg4.length:
        mem[(67 * arg3.length) + ceil32(arg4.length) + 448] = mem[(34 * arg3.length) + 160]
        s = arg3.length + 32
        continue 
    if arg3.length > arg4.length:
        mem[(64 * arg3.length) + ceil32(arg4.length) + arg4.length + 448] = 0
    mem[(32 * arg3.length) + ceil32(arg4.length) + 352] = arg1
    emit 0xb9fb09db: mem[(32 * arg3.length) + ceil32(arg4.length) + 224 len (96 * arg3.length) + (2 * ceil32(arg4.length)) + 224]
}

function refundContribution(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
    require arg2 < numBounties
    require arg3 < bounties[arg2].field_2048
    require arg3 < bounties[arg2].field_2048
    require arg1 == stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
    require not bounties[arg2].field_1536
    require arg3 < bounties[arg2].field_2048
    require not stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    require block.timestamp > bounties[arg2].field_512
    require arg3 < bounties[arg2].field_2048
    stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 1
    if not bounties[arg2].field_1024:
        require stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
        require bounties[arg2].field_1280 >= stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
        require stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
        bounties[arg2].field_1280 -= stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
        call stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
           value stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if bounties[arg2].field_1024 != 20:
            require bounties[arg2].field_1024 == 721
            require stor2[arg2][stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
            stor2[arg2][stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
            require ext_code.size(bounties[arg2].field_768)
            call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
            require bounties[arg2].field_1280 >= stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
            require stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
            bounties[arg2].field_1280 -= stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
            require ext_code.size(bounties[arg2].field_768)
            call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * arg3) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit ContributionRefunded(arg2, arg3);
    Mask(96, 0, stor4.field_160) = 0
}

function acceptFulfillment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256[] arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg5.length) + 128 <= test266151307() and (32 * arg5.length) + 128 >= 96
    mem[64] = (32 * arg5.length) + 128
    mem[96] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_1792
        require arg4 < bounties[arg2].field_256
        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg4].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        bounties[arg2].field_1536 = 1
        mem[32] = 1
        require arg3 < bounties[arg2].field_1792
        mem[0] = sha3(arg2, 1) + 7
        require arg5.length == stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
        idx = 0
        while idx < stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
            require idx < mem[96]
            if mem[(32 * idx) + 128] > 0:
                require idx < stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require idx < mem[96]
                _168 = mem[(32 * idx) + 128]
                if not bounties[arg2].field_1024:
                    require mem[(32 * idx) + 128] > 0
                    require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                    require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                    call stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                       value mem[(32 * idx) + 128] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][mem[(32 * idx) + 128]]
                        stor2[arg2][mem[(32 * idx) + 128]] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                        mem[mem[64] + 68] = _168
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _168
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require mem[(32 * idx) + 128] > 0
                        require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                        mem[mem[64] + 36] = _168
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _168
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_216]
            idx = idx + 1
            continue 
    else:
        require msg.sender == metaTxRelayerAddress
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_1792
        require arg4 < bounties[arg2].field_256
        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg4].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        bounties[arg2].field_1536 = 1
        mem[32] = 1
        require arg3 < bounties[arg2].field_1792
        mem[0] = sha3(arg2, 1) + 7
        require arg5.length == stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
        idx = 0
        while idx < stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
            require idx < mem[96]
            if mem[(32 * idx) + 128] > 0:
                require idx < stor[(2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require idx < mem[96]
                _169 = mem[(32 * idx) + 128]
                if not bounties[arg2].field_1024:
                    require mem[(32 * idx) + 128] > 0
                    require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                    require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                    call stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                       value mem[(32 * idx) + 128] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][mem[(32 * idx) + 128]]
                        stor2[arg2][mem[(32 * idx) + 128]] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                        mem[mem[64] + 68] = _169
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _169
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require mem[(32 * idx) + 128] > 0
                        require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                        mem[mem[64] + 36] = _169
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor[sha3((2 * arg3) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _169
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_217]
            idx = idx + 1
            continue 
    mem[mem[64]] = arg2
    mem[mem[64] + 32] = arg3
    mem[mem[64] + 64] = arg1
    mem[mem[64] + 96] = 128
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                             arg2,
                             arg3,
                             address(arg1),
                             128,
                             mem[mem[64] + 128 len (32 * mem[96]) + 32],
    Mask(96, 0, stor4.field_160) = 0
}

function refundContributions(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    mem[64] = (32 * arg4.length) + 128
    mem[96] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        require arg2 < numBounties
        mem[32] = 1
        require arg3 < bounties[arg2].field_0
        mem[0] = sha3(arg2, 1)
        require arg1 == bounties[arg2][arg3].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        idx = 0
        while idx < arg4.length:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= bounties[arg2].field_2048
            require idx < mem[96]
            _164 = mem[(32 * idx) + 128]
            require mem[(32 * idx) + 128] < bounties[arg2].field_2048
            require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
            if not bounties[arg2].field_1024:
                require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                mem[0] = arg2
                mem[32] = 1
                bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                   value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if bounties[arg2].field_1024 != 20:
                    require bounties[arg2].field_1024 == 721
                    require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                    stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                    mem[0] = arg2
                    mem[32] = 1
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    mem[mem[64] + 68] = stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    mem[0] = arg2
                    mem[32] = 1
                    mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    mem[mem[64] + 36] = stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor[(3 * _164) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_214]
            idx = idx + 1
            continue 
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 96
        _200 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        emit ContributionsRefunded(uint256 arg1, address arg2, uint256[] arg3):
                                   arg2,
                                   address(arg1),
                                   96,
                                   mem[mem[64] + 96 len (32 * _200) + 32],
    else:
        require msg.sender == metaTxRelayerAddress
        require arg2 < numBounties
        mem[32] = 1
        require arg3 < bounties[arg2].field_0
        mem[0] = sha3(arg2, 1)
        require arg1 == bounties[arg2][arg3].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        idx = 0
        while idx < arg4.length:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= bounties[arg2].field_2048
            require idx < mem[96]
            _165 = mem[(32 * idx) + 128]
            require mem[(32 * idx) + 128] < bounties[arg2].field_2048
            require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
            if not bounties[arg2].field_1024:
                require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                mem[0] = arg2
                mem[32] = 1
                bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                   value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if bounties[arg2].field_1024 != 20:
                    require bounties[arg2].field_1024 == 721
                    require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                    stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                    mem[0] = arg2
                    mem[32] = 1
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    mem[mem[64] + 68] = stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    mem[0] = arg2
                    mem[32] = 1
                    mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    mem[mem[64] + 36] = stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor[(3 * _165) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_215]
            idx = idx + 1
            continue 
        mem[mem[64]] = arg2
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 96
        _204 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        emit ContributionsRefunded(uint256 arg1, address arg2, uint256[] arg3):
                                   arg2,
                                   address(arg1),
                                   96,
                                   mem[mem[64] + 96 len (32 * _204) + 32],
    Mask(96, 0, stor4.field_160) = 0
}

function drainBounty(address arg1, uint256 arg2, uint256 arg3, uint256[] arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    mem[64] = (32 * arg4.length) + 128
    mem[96] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_0
        require arg1 == bounties[arg2][arg3].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        if not bounties[arg2].field_1024:
            require arg4.length == 1
            require 0 < arg4.length
            require mem[128] <= bounties[arg2].field_1280
            require 0 < arg4.length
            if not bounties[arg2].field_1024:
                require mem[128] > 0
                require bounties[arg2].field_1280 >= mem[128]
                require mem[128] <= bounties[arg2].field_1280
                bounties[arg2].field_1280 -= mem[128]
                call arg1 with:
                   value mem[128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if bounties[arg2].field_1024 != 20:
                    require bounties[arg2].field_1024 == 721
                    require stor2[arg2][mem[128]]
                    stor2[arg2][mem[128]] = 0
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1), mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[128] > 0
                    require bounties[arg2].field_1280 >= mem[128]
                    require mem[128] <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= mem[128]
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = arg2
            emit BountyDrained(arg2, address(arg1), Array(len=arg4.length, data=mem[128 len 32 * arg4.length]));
        else:
            mem[0] = arg2
            mem[32] = 1
            if bounties[arg2].field_1024 != 20:
                idx = 0
                while idx < arg4.length:
                    require idx < mem[96]
                    require stor2[arg2][mem[(32 * idx) + 128]]
                    require idx < mem[96]
                    _520 = mem[(32 * idx) + 128]
                    if not bounties[arg2].field_1024:
                        require mem[(32 * idx) + 128] > 0
                        require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                        mem[0] = arg2
                        mem[32] = 1
                        bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                        call arg1 with:
                           value mem[(32 * idx) + 128] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bounties[arg2].field_1024 != 20:
                            require bounties[arg2].field_1024 == 721
                            require stor2[arg2][mem[(32 * idx) + 128]]
                            stor2[arg2][mem[(32 * idx) + 128]] = 0
                            mem[0] = arg2
                            mem[32] = 1
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _520
                            require ext_code.size(bounties[arg2].field_768)
                            call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(arg1), _520
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require mem[(32 * idx) + 128] > 0
                            require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                            require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                            bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                            mem[0] = arg2
                            mem[32] = 1
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _520
                            require ext_code.size(bounties[arg2].field_768)
                            call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _520
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _568 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_568]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 96
                _560 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                emit BountyDrained(uint256 arg1, address arg2, uint256[] arg3):
                                   arg2,
                                   address(arg1),
                                   96,
                                   mem[mem[64] + 96 len (32 * _560) + 32],
            else:
                require arg4.length == 1
                require 0 < arg4.length
                require mem[128] <= bounties[arg2].field_1280
                require 0 < arg4.length
                if not bounties[arg2].field_1024:
                    require mem[128] > 0
                    require bounties[arg2].field_1280 >= mem[128]
                    require mem[128] <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= mem[128]
                    call arg1 with:
                       value mem[128] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][mem[128]]
                        stor2[arg2][mem[128]] = 0
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), address(arg1), mem[128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require mem[128] > 0
                        require bounties[arg2].field_1280 >= mem[128]
                        require mem[128] <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= mem[128]
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mem[128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = arg2
                emit BountyDrained(arg2, address(arg1), Array(len=arg4.length, data=mem[128 len 32 * arg4.length]));
    else:
        require msg.sender == metaTxRelayerAddress
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_0
        require arg1 == bounties[arg2][arg3].field_0
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        if not bounties[arg2].field_1024:
            require arg4.length == 1
            require 0 < arg4.length
            require mem[128] <= bounties[arg2].field_1280
            require 0 < arg4.length
            if not bounties[arg2].field_1024:
                require mem[128] > 0
                require bounties[arg2].field_1280 >= mem[128]
                require mem[128] <= bounties[arg2].field_1280
                bounties[arg2].field_1280 -= mem[128]
                call arg1 with:
                   value mem[128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if bounties[arg2].field_1024 != 20:
                    require bounties[arg2].field_1024 == 721
                    require stor2[arg2][mem[128]]
                    stor2[arg2][mem[128]] = 0
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1), mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require mem[128] > 0
                    require bounties[arg2].field_1280 >= mem[128]
                    require mem[128] <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= mem[128]
                    require ext_code.size(bounties[arg2].field_768)
                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), mem[128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = arg2
            emit BountyDrained(arg2, address(arg1), Array(len=arg4.length, data=mem[128 len 32 * arg4.length]));
        else:
            mem[0] = arg2
            mem[32] = 1
            if bounties[arg2].field_1024 != 20:
                idx = 0
                while idx < arg4.length:
                    require idx < mem[96]
                    require stor2[arg2][mem[(32 * idx) + 128]]
                    require idx < mem[96]
                    _521 = mem[(32 * idx) + 128]
                    if not bounties[arg2].field_1024:
                        require mem[(32 * idx) + 128] > 0
                        require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                        require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                        mem[0] = arg2
                        mem[32] = 1
                        bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                        call arg1 with:
                           value mem[(32 * idx) + 128] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if bounties[arg2].field_1024 != 20:
                            require bounties[arg2].field_1024 == 721
                            require stor2[arg2][mem[(32 * idx) + 128]]
                            stor2[arg2][mem[(32 * idx) + 128]] = 0
                            mem[0] = arg2
                            mem[32] = 1
                            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = arg1
                            mem[mem[64] + 68] = _521
                            require ext_code.size(bounties[arg2].field_768)
                            call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(this.address), address(arg1), _521
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require mem[(32 * idx) + 128] > 0
                            require bounties[arg2].field_1280 >= mem[(32 * idx) + 128]
                            require mem[(32 * idx) + 128] <= bounties[arg2].field_1280
                            bounties[arg2].field_1280 -= mem[(32 * idx) + 128]
                            mem[0] = arg2
                            mem[32] = 1
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _521
                            require ext_code.size(bounties[arg2].field_768)
                            call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _521
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _569 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_569]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg2
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = 96
                _561 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                emit BountyDrained(uint256 arg1, address arg2, uint256[] arg3):
                                   arg2,
                                   address(arg1),
                                   96,
                                   mem[mem[64] + 96 len (32 * _561) + 32],
            else:
                require arg4.length == 1
                require 0 < arg4.length
                require mem[128] <= bounties[arg2].field_1280
                require 0 < arg4.length
                if not bounties[arg2].field_1024:
                    require mem[128] > 0
                    require bounties[arg2].field_1280 >= mem[128]
                    require mem[128] <= bounties[arg2].field_1280
                    bounties[arg2].field_1280 -= mem[128]
                    call arg1 with:
                       value mem[128] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][mem[128]]
                        stor2[arg2][mem[128]] = 0
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), address(arg1), mem[128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require mem[128] > 0
                        require bounties[arg2].field_1280 >= mem[128]
                        require mem[128] <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= mem[128]
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), mem[128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = arg2
                emit BountyDrained(arg2, address(arg1), Array(len=arg4.length, data=mem[128 len 32 * arg4.length]));
    Mask(96, 0, stor4.field_160) = 0
}

function getBounty(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    mem[352] = 96
    mem[0] = arg1
    mem[32] = 1
    mem[672] = bounties[arg1].field_0
    if not bounties[arg1].field_0:
        mem[384] = 672
        mem[(32 * bounties[arg1].field_0) + 704] = bounties[arg1].field_256
        if not bounties[arg1].field_256:
            mem[416] = (32 * bounties[arg1].field_0) + 704
            mem[448] = bounties[arg1].field_512
            mem[480] = bounties[arg1].field_768
            mem[512] = bounties[arg1].field_1024
            mem[544] = bounties[arg1].field_1280
            mem[576] = bool(bounties[arg1].field_1536)
            mem[64] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + (32 * bounties[arg1].field_1792) + 768
            mem[(32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736] = bounties[arg1].field_1792
            s = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 768
            idx = 0
            while idx < bounties[arg1].field_1792:
                mem[0] = sha3(arg1, 1) + 7
                _44 = mem[64]
                mem[64] = mem[64] + 64
                _45 = mem[64]
                mem[64] = mem[64] + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) + 32
                mem[_45] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
                if stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0:
                    mem[0] = (2 * idx) + sha3(sha3(arg1, 1) + 7)
                    mem[_45 + 32] = stor[sha3((2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1))))].field_0
                    t = _45 + 32
                    u = sha3(mem[0])
                    while _45 + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) > t:
                        mem[t + 32] = bounties[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_44] = _45
                mem[_44 + 32] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
                mem[s] = _44
                s = s + 32
                idx = idx + 1
                continue 
            mem[608] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736
            _42 = mem[64]
            mem[64] = mem[64] + (32 * bounties[arg1].field_2048) + 32
            mem[_42] = bounties[arg1].field_2048
            s = _42 + 32
            idx = 0
            while idx < bounties[arg1].field_2048:
                mem[0] = sha3(arg1, 1) + 8
                _78 = mem[64]
                mem[64] = mem[64] + 96
                mem[_78] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
                mem[_78 + 32] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
                mem[_78 + 64] = bool(stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_512)
                mem[s] = _78
                s = s + 32
                idx = idx + 1
                continue 
            mem[640] = _42
            _81 = mem[64]
            mem[mem[64]] = 32
            _91 = mem[384]
            mem[mem[64] + 32] = 288
            _98 = mem[_91]
            mem[mem[64] + 320] = mem[_91]
            idx = 0
            s = _91 + 32
            t = mem[64] + 352
            while idx < _98:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _182 = mem[416]
            mem[mem[64] + 64] = (32 * _98) + 320
            _189 = mem[_182]
            mem[mem[64] + (32 * _98) + 352] = mem[_182]
            idx = 0
            s = _182 + 32
            t = mem[64] + (32 * _98) + 384
            while idx < _189:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = mem[448]
            mem[mem[64] + 128] = mem[492 len 20]
            mem[mem[64] + 160] = mem[512]
            mem[mem[64] + 192] = mem[544]
            mem[mem[64] + 224] = bool(mem[576])
            _300 = mem[608]
            mem[mem[64] + 256] = (32 * _98) + (32 * _189) + 352
            _303 = mem[_300]
            mem[mem[64] + (32 * _98) + (32 * _189) + 384] = mem[_300]
            idx = 0
            s = _300 + 32
            t = mem[64] + (32 * _98) + (32 * _189) + (32 * _303) + 416
            u = mem[64] + (32 * _98) + (32 * _189) + 416
            while idx < _303:
                mem[u] = t + -_81 + -(32 * _98) + -(32 * _189) - 416
                _372 = mem[s]
                _383 = mem[mem[s]]
                mem[t] = 64
                _390 = mem[_383]
                mem[t + 64] = mem[_383]
                v = 0
                w = _383 + 32
                x = t + 96
                while v < _390:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                mem[t + 32] = mem[_372 + 44 len 20]
                v = _390 + 1
                w = _383 + (32 * _390) + 64
                t = t + (32 * _390) + 96
                u = u + 32
                continue 
            _379 = mem[640]
            mem[_81 + 288] = t + -_81 - 32
            _386 = mem[_379]
            mem[t] = mem[_379]
            idx = 0
            s = _379 + 32
            u = t + 32
            while idx < _386:
                _463 = mem[s]
                mem[u] = mem[mem[s] + 12 len 20]
                mem[u + 32] = mem[_463 + 32]
                mem[u + 64] = bool(mem[_463 + 64])
                idx = idx + 1
                s = s + 32
                u = u + 96
                continue 
            return memory
              from mem[64]
               len t + (96 * _386) + -mem[64] + 32
        mem[0] = sha3(arg1, 1) + 1
        mem[(32 * bounties[arg1].field_0) + 736] = bounties[arg1][1].field_0
        idx = (32 * bounties[arg1].field_0) + 736
        s = 0
        while (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 704 > idx:
            mem[idx + 32] = bounties[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[416] = (32 * bounties[arg1].field_0) + 704
        mem[448] = bounties[arg1].field_512
        mem[480] = bounties[arg1].field_768
        mem[512] = bounties[arg1].field_1024
        mem[544] = bounties[arg1].field_1280
        mem[576] = bool(bounties[arg1].field_1536)
        mem[64] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + (32 * bounties[arg1].field_1792) + 768
        mem[(32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736] = bounties[arg1].field_1792
        s = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 768
        idx = 0
        while idx < bounties[arg1].field_1792:
            mem[0] = sha3(arg1, 1) + 7
            _176 = mem[64]
            mem[64] = mem[64] + 64
            _177 = mem[64]
            mem[64] = mem[64] + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) + 32
            mem[_177] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
            if stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0:
                mem[0] = (2 * idx) + sha3(sha3(arg1, 1) + 7)
                mem[_177 + 32] = stor[sha3((2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1))))].field_0
                t = _177 + 32
                u = sha3(mem[0])
                while _177 + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) > t:
                    mem[t + 32] = bounties[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_176] = _177
            mem[_176 + 32] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
            mem[s] = _176
            s = s + 32
            idx = idx + 1
            continue 
        mem[608] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736
        _174 = mem[64]
        mem[64] = mem[64] + (32 * bounties[arg1].field_2048) + 32
        mem[_174] = bounties[arg1].field_2048
        s = _174 + 32
        idx = 0
        while idx < bounties[arg1].field_2048:
            mem[0] = sha3(arg1, 1) + 8
            _265 = mem[64]
            mem[64] = mem[64] + 96
            mem[_265] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
            mem[_265 + 32] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
            mem[_265 + 64] = bool(stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_512)
            mem[s] = _265
            s = s + 32
            idx = idx + 1
            continue 
        mem[640] = _174
        _269 = mem[64]
        mem[mem[64]] = 32
        _276 = mem[384]
        mem[mem[64] + 32] = 288
        _282 = mem[_276]
        mem[mem[64] + 320] = mem[_276]
        idx = 0
        s = _276 + 32
        t = mem[64] + 352
        while idx < _282:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _380 = mem[416]
        mem[mem[64] + 64] = (32 * _282) + 320
        _387 = mem[_380]
        mem[mem[64] + (32 * _282) + 352] = mem[_380]
        idx = 0
        s = _380 + 32
        t = mem[64] + (32 * _282) + 384
        while idx < _387:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = mem[448]
        mem[mem[64] + 128] = mem[492 len 20]
        mem[mem[64] + 160] = mem[512]
        mem[mem[64] + 192] = mem[544]
        mem[mem[64] + 224] = bool(mem[576])
        _491 = mem[608]
        mem[mem[64] + 256] = (32 * _282) + (32 * _387) + 352
        _494 = mem[_491]
        mem[mem[64] + (32 * _282) + (32 * _387) + 384] = mem[_491]
        idx = 0
        s = _491 + 32
        t = mem[64] + (32 * _282) + (32 * _387) + (32 * _494) + 416
        u = mem[64] + (32 * _282) + (32 * _387) + 416
        while idx < _494:
            mem[u] = t + -_269 + -(32 * _282) + -(32 * _387) - 416
            _538 = mem[s]
            _544 = mem[mem[s]]
            mem[t] = 64
            _549 = mem[_544]
            mem[t + 64] = mem[_544]
            v = 0
            w = _544 + 32
            x = t + 96
            while v < _549:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_538 + 44 len 20]
            v = _549 + 1
            w = _544 + (32 * _549) + 64
            t = t + (32 * _549) + 96
            u = u + 32
            continue 
        _541 = mem[640]
        mem[_269 + 288] = t + -_269 - 32
        _546 = mem[_541]
        mem[t] = mem[_541]
        idx = 0
        s = _541 + 32
        u = t + 32
        while idx < _546:
            _585 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_585 + 32]
            mem[u + 64] = bool(mem[_585 + 64])
            idx = idx + 1
            s = s + 32
            u = u + 96
            continue 
        return memory
          from mem[64]
           len t + (96 * _546) + -mem[64] + 32
    mem[0] = sha3(arg1, 1)
    mem[704] = bounties[arg1].field_0
    idx = 704
    s = 0
    while (32 * bounties[arg1].field_0) + 672 > idx:
        mem[idx + 32] = bounties[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[384] = 672
    mem[(32 * bounties[arg1].field_0) + 704] = bounties[arg1].field_256
    if not bounties[arg1].field_256:
        mem[416] = (32 * bounties[arg1].field_0) + 704
        mem[448] = bounties[arg1].field_512
        mem[480] = bounties[arg1].field_768
        mem[512] = bounties[arg1].field_1024
        mem[544] = bounties[arg1].field_1280
        mem[576] = bool(bounties[arg1].field_1536)
        mem[64] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + (32 * bounties[arg1].field_1792) + 768
        mem[(32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736] = bounties[arg1].field_1792
        s = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 768
        idx = 0
        while idx < bounties[arg1].field_1792:
            mem[0] = sha3(arg1, 1) + 7
            _180 = mem[64]
            mem[64] = mem[64] + 64
            _181 = mem[64]
            mem[64] = mem[64] + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) + 32
            mem[_181] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
            if stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0:
                mem[0] = (2 * idx) + sha3(sha3(arg1, 1) + 7)
                mem[_181 + 32] = stor[sha3((2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1))))].field_0
                t = _181 + 32
                u = sha3(mem[0])
                while _181 + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) > t:
                    mem[t + 32] = bounties[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
            mem[_180] = _181
            mem[_180 + 32] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
            mem[s] = _180
            s = s + 32
            idx = idx + 1
            continue 
        mem[608] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736
        _178 = mem[64]
        mem[64] = mem[64] + (32 * bounties[arg1].field_2048) + 32
        mem[_178] = bounties[arg1].field_2048
        s = _178 + 32
        idx = 0
        while idx < bounties[arg1].field_2048:
            mem[0] = sha3(arg1, 1) + 8
            _267 = mem[64]
            mem[64] = mem[64] + 96
            mem[_267] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
            mem[_267 + 32] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
            mem[_267 + 64] = bool(stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_512)
            mem[s] = _267
            s = s + 32
            idx = idx + 1
            continue 
        mem[640] = _178
        _270 = mem[64]
        mem[mem[64]] = 32
        _277 = mem[384]
        mem[mem[64] + 32] = 288
        _283 = mem[_277]
        mem[mem[64] + 320] = mem[_277]
        idx = 0
        s = _277 + 32
        t = mem[64] + 352
        while idx < _283:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _381 = mem[416]
        mem[mem[64] + 64] = (32 * _283) + 320
        _388 = mem[_381]
        mem[mem[64] + (32 * _283) + 352] = mem[_381]
        idx = 0
        s = _381 + 32
        t = mem[64] + (32 * _283) + 384
        while idx < _388:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = mem[448]
        mem[mem[64] + 128] = mem[492 len 20]
        mem[mem[64] + 160] = mem[512]
        mem[mem[64] + 192] = mem[544]
        mem[mem[64] + 224] = bool(mem[576])
        _492 = mem[608]
        mem[mem[64] + 256] = (32 * _283) + (32 * _388) + 352
        _495 = mem[_492]
        mem[mem[64] + (32 * _283) + (32 * _388) + 384] = mem[_492]
        idx = 0
        s = _492 + 32
        t = mem[64] + (32 * _283) + (32 * _388) + (32 * _495) + 416
        u = mem[64] + (32 * _283) + (32 * _388) + 416
        while idx < _495:
            mem[u] = t + -_270 + -(32 * _283) + -(32 * _388) - 416
            _539 = mem[s]
            _545 = mem[mem[s]]
            mem[t] = 64
            _550 = mem[_545]
            mem[t + 64] = mem[_545]
            v = 0
            w = _545 + 32
            x = t + 96
            while v < _550:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 32] = mem[_539 + 44 len 20]
            v = _550 + 1
            w = _545 + (32 * _550) + 64
            t = t + (32 * _550) + 96
            u = u + 32
            continue 
        _542 = mem[640]
        mem[_270 + 288] = t + -_270 - 32
        _547 = mem[_542]
        mem[t] = mem[_542]
        idx = 0
        s = _542 + 32
        u = t + 32
        while idx < _547:
            _587 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_587 + 32]
            mem[u + 64] = bool(mem[_587 + 64])
            idx = idx + 1
            s = s + 32
            u = u + 96
            continue 
        return memory
          from mem[64]
           len t + (96 * _547) + -mem[64] + 32
    mem[0] = sha3(arg1, 1) + 1
    mem[(32 * bounties[arg1].field_0) + 736] = bounties[arg1][1].field_0
    idx = (32 * bounties[arg1].field_0) + 736
    s = 0
    while (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 704 > idx:
        mem[idx + 32] = bounties[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[416] = (32 * bounties[arg1].field_0) + 704
    mem[448] = bounties[arg1].field_512
    mem[480] = bounties[arg1].field_768
    mem[512] = bounties[arg1].field_1024
    mem[544] = bounties[arg1].field_1280
    mem[576] = bool(bounties[arg1].field_1536)
    mem[64] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + (32 * bounties[arg1].field_1792) + 768
    mem[(32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736] = bounties[arg1].field_1792
    s = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 768
    idx = 0
    while idx < bounties[arg1].field_1792:
        mem[0] = sha3(arg1, 1) + 7
        _377 = mem[64]
        mem[64] = mem[64] + 64
        _378 = mem[64]
        mem[64] = mem[64] + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) + 32
        mem[_378] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
        if stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0:
            mem[0] = (2 * idx) + sha3(sha3(arg1, 1) + 7)
            mem[_378 + 32] = stor[sha3((2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1))))].field_0
            t = _378 + 32
            u = sha3(mem[0])
            while _378 + (32 * stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0) > t:
                mem[t + 32] = bounties[u].field_0
                t = t + 32
                u = u + 1
                continue 
        mem[_377] = _378
        mem[_377 + 32] = stor[(2 * idx) + ('array', 7, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
        mem[s] = _377
        s = s + 32
        idx = idx + 1
        continue 
    mem[608] = (32 * bounties[arg1].field_0) + (32 * bounties[arg1].field_256) + 736
    _375 = mem[64]
    mem[64] = mem[64] + (32 * bounties[arg1].field_2048) + 32
    mem[_375] = bounties[arg1].field_2048
    s = _375 + 32
    idx = 0
    while idx < bounties[arg1].field_2048:
        mem[0] = sha3(arg1, 1) + 8
        _468 = mem[64]
        mem[64] = mem[64] + 96
        mem[_468] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_0
        mem[_468 + 32] = stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_256
        mem[_468 + 64] = bool(stor[(3 * idx) + ('array', 8, ('map', ('param', 'arg1'), ('name', 'bounties', 1)))].field_512)
        mem[s] = _468
        s = s + 32
        idx = idx + 1
        continue 
    mem[640] = _375
    _472 = mem[64]
    mem[mem[64]] = 32
    _475 = mem[384]
    mem[mem[64] + 32] = 288
    _478 = mem[_475]
    mem[mem[64] + 320] = mem[_475]
    idx = 0
    s = _475 + 32
    t = mem[64] + 352
    while idx < _478:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _543 = mem[416]
    mem[mem[64] + 64] = (32 * _478) + 320
    _548 = mem[_543]
    mem[mem[64] + (32 * _478) + 352] = mem[_543]
    idx = 0
    s = _543 + 32
    t = mem[64] + (32 * _478) + 384
    while idx < _548:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 96] = mem[448]
    mem[mem[64] + 128] = mem[492 len 20]
    mem[mem[64] + 160] = mem[512]
    mem[mem[64] + 192] = mem[544]
    mem[mem[64] + 224] = bool(mem[576])
    _605 = mem[608]
    mem[mem[64] + 256] = (32 * _478) + (32 * _548) + 352
    _606 = mem[_605]
    mem[mem[64] + (32 * _478) + (32 * _548) + 384] = mem[_605]
    idx = 0
    s = _605 + 32
    t = mem[64] + (32 * _478) + (32 * _548) + (32 * _606) + 416
    u = mem[64] + (32 * _478) + (32 * _548) + 416
    while idx < _606:
        mem[u] = t + -_472 + -(32 * _478) + -(32 * _548) - 416
        _619 = mem[s]
        _621 = mem[mem[s]]
        mem[t] = 64
        _623 = mem[_621]
        mem[t + 64] = mem[_621]
        v = 0
        w = _621 + 32
        x = t + 96
        while v < _623:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        mem[t + 32] = mem[_619 + 44 len 20]
        v = _623 + 1
        w = _621 + (32 * _623) + 64
        t = t + (32 * _623) + 96
        u = u + 32
        continue 
    _620 = mem[640]
    mem[_472 + 288] = t + -_472 - 32
    _622 = mem[_620]
    mem[t] = mem[_620]
    idx = 0
    s = _620 + 32
    u = t + 32
    while idx < _622:
        _631 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_631 + 32]
        mem[u + 64] = bool(mem[_631 + 64])
        idx = idx + 1
        s = s + 32
        u = u + 96
        continue 
    return memory
      from mem[64]
       len t + (96 * _622) + -mem[64] + 32
}

function refundMyContributions(address arg1, uint256 arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _322 = mem[(32 * idx) + 128]
            if msg.sender == arg1:
                require arg2 < numBounties
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require arg1 == stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require not bounties[arg2].field_1536
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
                require not uint8(stor4.field_160)
                Mask(96, 0, stor4.field_160) = 1
                require block.timestamp > bounties[arg2].field_512
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 1
                if not bounties[arg2].field_1024:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                       value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                        stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 36] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 68] = stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                        require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 36] = stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_448]
            else:
                require msg.sender == metaTxRelayerAddress
                require arg2 < numBounties
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require arg1 == stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require not bounties[arg2].field_1536
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
                require not uint8(stor4.field_160)
                Mask(96, 0, stor4.field_160) = 1
                require block.timestamp > bounties[arg2].field_512
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 1
                if not bounties[arg2].field_1024:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                       value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                        stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 36] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 68] = stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                        require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 36] = stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[(3 * _322) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_451]
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = _322
            emit ContributionRefunded(arg2, _322);
            Mask(96, 0, stor4.field_160) = 0
            idx = idx + 1
            continue 
    else:
        require msg.sender == metaTxRelayerAddress
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _323 = mem[(32 * idx) + 128]
            if msg.sender == arg1:
                require arg2 < numBounties
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require arg1 == stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require not bounties[arg2].field_1536
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
                require not uint8(stor4.field_160)
                Mask(96, 0, stor4.field_160) = 1
                require block.timestamp > bounties[arg2].field_512
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 1
                if not bounties[arg2].field_1024:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                       value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                        stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 36] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 68] = stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                        require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 36] = stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_449]
            else:
                require msg.sender == metaTxRelayerAddress
                require arg2 < numBounties
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require arg1 == stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                require not bounties[arg2].field_1536
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                require not stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512
                require not uint8(stor4.field_160)
                Mask(96, 0, stor4.field_160) = 1
                require block.timestamp > bounties[arg2].field_512
                require mem[(32 * idx) + 128] < bounties[arg2].field_2048
                stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_512 = 1
                if not bounties[arg2].field_1024:
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                    require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                    call stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 with:
                       value stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if bounties[arg2].field_1024 != 20:
                        require bounties[arg2].field_1024 == 721
                        require stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256]
                        stor2[arg2][stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'stor1', 1)))].field_256] = 0
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 36] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 68] = stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0, stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 > 0
                        require bounties[arg2].field_1280 >= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 <= bounties[arg2].field_1280
                        bounties[arg2].field_1280 -= stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[0] = arg2
                        mem[32] = 1
                        mem[mem[64] + 4] = stor[(3 * mem[(32 * idx) + 128]) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        mem[mem[64] + 36] = stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        require ext_code.size(bounties[arg2].field_768)
                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], stor[(3 * _323) + ('array', 8, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_453]
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = _323
            emit ContributionRefunded(arg2, _323);
            Mask(96, 0, stor4.field_160) = 0
            idx = idx + 1
            continue 
}

function changeBounty(address arg1, uint256 arg2, uint256 arg3, address[] arg4, address[] arg5, string arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 128 <= test266151307() and (32 * arg4.length) + 128 >= 96
    mem[96] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg4.length) + (32 * arg5.length) + 160 <= test266151307() and (32 * arg5.length) + 160 >= 128
    mem[(32 * arg4.length) + 128] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = (32 * arg4.length) + 160
    while idx < arg5.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 <= test266151307() and ceil32(arg6.length) + 192 >= 160
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len arg6.length] = arg6[all]
    mem[(32 * arg4.length) + (32 * arg5.length) + arg6.length + 192] = 0
    if arg1 != msg.sender:
        require msg.sender == metaTxRelayerAddress
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_0
        require arg3 < bounties[arg2].field_0
        require arg1 == bounties[arg2][arg3].field_0
        if arg4.length > 0:
            bounties[arg2].field_0 = arg4.length
            if not arg4.length:
                idx = 0
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg4.length) + 128 > idx:
                    bounties[arg2][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            bounties[arg2].field_256 = arg5.length
            if not arg5.length:
                idx = 0
                while bounties[arg2].field_256 > idx:
                    bounties[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg4.length) + 160
                while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                    bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                while bounties[arg2].field_256 > idx:
                    bounties[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
            bounties[arg2].field_512 = arg7
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
            idx = 0
            s = 128
            t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
            while idx < arg4.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
            mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
            idx = 0
            s = (32 * arg4.length) + 160
            t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
            while idx < arg5.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
            mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
            s = 0
            while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                s = arg5.length + 32
                continue 
            if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
            emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len 128], (32 * arg4.length) + (32 * arg5.length) + 256, arg7, mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384 len (32 * arg4.length) + (32 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 96]
        else:
            require arg5.length > 0
            bounties[arg2].field_0 = arg4.length
            if arg4.length:
                s = 0
                idx = 128
                while (32 * arg4.length) + 128 > idx:
                    bounties[arg2][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                bounties[arg2].field_256 = arg5.length
                if not arg5.length:
                    idx = 0
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * arg4.length) + 160
                    while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                        bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                bounties[arg2].field_512 = arg7
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                idx = 0
                s = 128
                t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                while idx < arg4.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                idx = 0
                s = (32 * arg4.length) + 160
                t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                while idx < arg5.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
                mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                s = 0
                while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                    s = arg5.length + 32
                    continue 
                if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len 128], (32 * arg4.length) + (32 * arg5.length) + 256, arg7, mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384 len (32 * arg4.length) + (32 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 96]
            else:
                idx = 0
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                bounties[arg2].field_256 = arg5.length
                if arg5.length:
                    s = 0
                    idx = (32 * arg4.length) + 160
                    while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                        bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < arg5.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
                    mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                        s = arg5.length + 32
                        continue 
                    if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len 128], (32 * arg4.length) + (32 * arg5.length) + 256, arg7, mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384 len (32 * arg4.length) + (32 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 96]
                else:
                    idx = 0
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < mem[(32 * arg4.length) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + 256
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while mem[(32 * arg4.length) + 128] < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (34 * mem[(32 * arg4.length) + 128]) + 480] = mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + 128] + 192]
                        s = mem[(32 * arg4.length) + 128] + 32
                        continue 
                    if mem[(32 * arg4.length) + 128] > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 352] = arg7
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len (96 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 288]
    else:
        require arg2 < numBounties
        require arg3 < bounties[arg2].field_0
        require arg3 < bounties[arg2].field_0
        require arg1 == bounties[arg2][arg3].field_0
        if arg4.length > 0:
            bounties[arg2].field_0 = arg4.length
            if not arg4.length:
                idx = 0
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg4.length) + 128 > idx:
                    bounties[arg2][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
            bounties[arg2].field_256 = arg5.length
            if arg5.length:
                s = 0
                idx = (32 * arg4.length) + 160
                while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                    bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                while bounties[arg2].field_256 > idx:
                    bounties[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                bounties[arg2].field_512 = arg7
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                idx = 0
                s = 128
                t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                while idx < arg4.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                idx = 0
                s = (32 * arg4.length) + 160
                t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                while idx < arg5.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
                mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                s = 0
                while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                    s = arg5.length + 32
                    continue 
                if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len 128], (32 * arg4.length) + (32 * arg5.length) + 256, arg7, mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384 len (32 * arg4.length) + (32 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 96]
            else:
                idx = 0
                while bounties[arg2].field_256 > idx:
                    bounties[arg2][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[0] = arg2
                mem[32] = 1
                bounties[arg2].field_512 = arg7
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                idx = 0
                s = 128
                t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                while idx < arg4.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                idx = 0
                s = (32 * arg4.length) + 160
                t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                while idx < mem[(32 * arg4.length) + 128]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + 256
                mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                s = 0
                while mem[(32 * arg4.length) + 128] < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (34 * mem[(32 * arg4.length) + 128]) + 480] = mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + 128] + 192]
                    s = mem[(32 * arg4.length) + 128] + 32
                    continue 
                if mem[(32 * arg4.length) + 128] > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 352] = arg7
                emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len (96 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 288]
        else:
            require arg5.length > 0
            bounties[arg2].field_0 = arg4.length
            if not arg4.length:
                idx = 0
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                bounties[arg2].field_256 = arg5.length
                if not arg5.length:
                    idx = 0
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < arg5.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
                    mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                        s = arg5.length + 32
                        continue 
                    if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len 128], (32 * arg4.length) + (32 * arg5.length) + 256, arg7, mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384 len (32 * arg4.length) + (32 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 96]
                else:
                    s = 0
                    idx = (32 * arg4.length) + 160
                    while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                        bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < mem[(32 * arg4.length) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + 256
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while mem[(32 * arg4.length) + 128] < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (34 * mem[(32 * arg4.length) + 128]) + 480] = mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + 128] + 192]
                        s = mem[(32 * arg4.length) + 128] + 32
                        continue 
                    if mem[(32 * arg4.length) + 128] > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 352] = arg7
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len (96 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 288]
            else:
                s = 0
                idx = 128
                while (32 * arg4.length) + 128 > idx:
                    bounties[arg2][s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
                while bounties[arg2].field_0 > idx:
                    bounties[arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                bounties[arg2].field_256 = arg5.length
                if not arg5.length:
                    idx = 0
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < arg5.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * arg5.length) + 256
                    mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while arg5.length < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (67 * arg5.length) + ceil32(arg6.length) + 480] = mem[(32 * arg4.length) + (34 * arg5.length) + 192]
                        s = arg5.length + 32
                        continue 
                    if arg5.length > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (64 * arg5.length) + ceil32(arg6.length) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 352] = arg7
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len (96 * arg4.length) + (96 * arg5.length) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 288]
                else:
                    s = 0
                    idx = (32 * arg4.length) + 160
                    while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
                        bounties[arg2][s + 1].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
                    while bounties[arg2].field_256 > idx:
                        bounties[arg2][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
                    mem[0] = arg2
                    mem[32] = 1
                    bounties[arg2].field_512 = arg7
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192] = arg2
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 224] = arg1
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 256] = 192
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 384] = arg4.length
                    idx = 0
                    s = 128
                    t = (32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416
                    while idx < arg4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 288] = (32 * arg4.length) + 224
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 416] = arg5.length
                    idx = 0
                    s = (32 * arg4.length) + 160
                    t = (64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 448
                    while idx < mem[(32 * arg4.length) + 128]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 320] = (32 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + 256
                    mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + 448] = mem[(32 * arg4.length) + (32 * arg5.length) + 160]
                    s = 0
                    while mem[(32 * arg4.length) + 128] < mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (34 * mem[(32 * arg4.length) + 128]) + 480] = mem[(32 * arg4.length) + (32 * arg5.length) + mem[(32 * arg4.length) + 128] + 192]
                        s = mem[(32 * arg4.length) + 128] + 32
                        continue 
                    if mem[(32 * arg4.length) + 128] > mem[(32 * arg4.length) + (32 * arg5.length) + 160]:
                        mem[(64 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + (32 * mem[(32 * arg4.length) + 128]) + mem[(32 * arg4.length) + (32 * arg5.length) + 160] + 480] = 0
                    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 352] = arg7
                    emit 0x588a0d2c: mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(arg6.length) + 192 len (96 * arg4.length) + (32 * mem[(32 * arg4.length) + 128]) + ceil32(mem[(32 * arg4.length) + (32 * arg5.length) + 160]) + 288]
}

function fulfillAndAccept(address arg1, uint256 arg2, address[] arg3, string arg4, uint256 arg5, uint256[] arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg3.length) + ceil32(arg4.length) + 160 <= test266151307() and ceil32(arg4.length) + 160 >= 128
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg3.length) + 160 len arg4.length] = arg4[all]
    mem[(32 * arg3.length) + arg4.length + 160] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require (32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 192 <= test266151307() and (32 * arg6.length) + 192 >= 160
    mem[(32 * arg3.length) + ceil32(arg4.length) + 160] = arg6.length
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    idx = 0
    s = arg6 + 36
    t = (32 * arg3.length) + ceil32(arg4.length) + 192
    while idx < arg6.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        require arg2 < numBounties
        require block.timestamp < bounties[arg2].field_512
        require arg3.length > 0
        mem[64] = (32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256
        mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 192] = 96
        mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 224] = arg1
        bounties[arg2].field_1792++
        stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg3.length
        if not arg3.length:
            idx = 0
            while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                idx = idx + 1
                continue 
            stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < arg3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * arg3.length) + 192
            _4101 = mem[(32 * arg3.length) + 128]
            mem[mem[64] + (32 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
            s = 0
            while arg3.length < _4101:
                mem[mem[64] + (34 * arg3.length) + 224] = mem[(34 * arg3.length) + 160]
                s = arg3.length + 32
                continue 
            if arg3.length <= _4101:
                mem[mem[64] + 128] = arg1
                emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_4101) + 64]
                if msg.sender == arg1:
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _6123 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _6123
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6123
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _6123
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6123
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6564 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6564]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _6375 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _6375] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6375]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _6375) + 32],
                else:
                    require msg.sender == metaTxRelayerAddress
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _6124 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _6124
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6124
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _6124
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6124
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6565 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6565]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _6376 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _6376] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6376]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _6376) + 32],
            else:
                mem[mem[64] + (32 * arg3.length) + _4101 + 224] = 0
                mem[mem[64] + 128] = arg1
                emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_4101) + 64]
                if msg.sender == arg1:
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _6125 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _6125
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6125
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _6125
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6125
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6566 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6566]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _6377 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _6377] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6377]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _6377) + 32],
                else:
                    require msg.sender == metaTxRelayerAddress
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _6126 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _6126
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6126
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _6126
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6126
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6567 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6567]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _6378 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _6378] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6378]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _6378) + 32],
        else:
            s = 0
            idx = 128
            while (32 * arg3.length) + 128 > idx:
                stor[s + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                idx = idx + 1
                continue 
            stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < arg3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * arg3.length) + 192
            _5094 = mem[(32 * arg3.length) + 128]
            mem[mem[64] + (32 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
            s = 0
            while arg3.length < _5094:
                mem[mem[64] + (34 * arg3.length) + 224] = mem[(34 * arg3.length) + 160]
                s = arg3.length + 32
                continue 
            if arg3.length <= _5094:
                mem[mem[64] + 128] = arg1
                emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5094) + 64]
                if msg.sender == arg1:
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _7011 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _7011
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7011
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _7011
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7011
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7299 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7299]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _7251 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _7251] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7251]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _7251) + 32],
                else:
                    require msg.sender == metaTxRelayerAddress
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _7012 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _7012
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7012
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _7012
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7012
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7300]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _7252 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _7252] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7252]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _7252) + 32],
            else:
                mem[mem[64] + (32 * arg3.length) + _5094 + 224] = 0
                mem[mem[64] + 128] = arg1
                emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5094) + 64]
                if msg.sender == arg1:
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _7013 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _7013
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7013
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _7013
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7013
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7301]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _7253 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _7253] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7253]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _7253) + 32],
                else:
                    require msg.sender == metaTxRelayerAddress
                    require arg2 < numBounties
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    require arg5 < bounties[arg2].field_256
                    require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                    require not uint8(stor4.field_160)
                    Mask(96, 0, stor4.field_160) = 1
                    bounties[arg2].field_1536 = 1
                    mem[32] = 1
                    require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                    mem[0] = sha3(arg2, 1) + 7
                    require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                    idx = 0
                    while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                        require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                            require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            _7014 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                            if not bounties[arg2].field_1024:
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                mem[0] = arg2
                                mem[32] = 1
                                bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                   value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if bounties[arg2].field_1024 != 20:
                                    require bounties[arg2].field_1024 == 721
                                    require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                    stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 68] = _7014
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7014
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    mem[0] = arg2
                                    mem[32] = 1
                                    mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                    mem[mem[64] + 36] = _7014
                                    require ext_code.size(bounties[arg2].field_768)
                                    call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7014
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7302]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = arg2
                    mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = 128
                    _7254 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                    mem[mem[64] + 160 len 32 * _7254] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7254]
                    emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                             arg2,
                                             bounties[arg2].field_1792 - 1,
                                             address(arg1),
                                             128,
                                             mem[mem[64] + 128 len (32 * _7254) + 32],
    else:
        require msg.sender == metaTxRelayerAddress
        if msg.sender == arg1:
            require arg2 < numBounties
            require block.timestamp < bounties[arg2].field_512
            require arg3.length > 0
            mem[64] = (32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 192] = 96
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 224] = arg1
            bounties[arg2].field_1792++
            stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg3.length
            if not arg3.length:
                idx = 0
                while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                    stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                    idx = idx + 1
                    continue 
                stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < arg3.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 352] = (32 * arg3.length) + 192
                mem[(64 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 448] = mem[(32 * arg3.length) + 128]
                s = 0
                while arg3.length < mem[(32 * arg3.length) + 128]:
                    mem[(67 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 480] = mem[(34 * arg3.length) + 160]
                    s = arg3.length + 32
                    continue 
                if arg3.length <= mem[(32 * arg3.length) + 128]:
                    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 384] = arg1
                    emit 0xb9fb09db: mem[mem[64] len (64 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + ceil32(mem[(32 * arg3.length) + 128]) + -mem[64] + 480]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6127 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6127
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6127
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6127
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6127
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6573 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6573]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6380 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6380] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6380]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6380) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6128 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6128
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6128
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6128
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6128
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6574 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6574]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6381 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6381] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6381]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6381) + 32],
                else:
                    mem[(64 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + mem[(32 * arg3.length) + 128] + 480] = 0
                    mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 384] = arg1
                    emit 0xb9fb09db: mem[mem[64] len (64 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + ceil32(mem[(32 * arg3.length) + 128]) + -mem[64] + 480]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6129 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6129
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6129
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6129
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6129
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6575 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6575]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6382 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6382] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6382]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6382) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6130 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6130
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6130
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6130
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6130
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6576 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6576]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6383 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6383] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6383]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6383) + 32],
            else:
                s = 0
                idx = 128
                while (32 * arg3.length) + 128 > idx:
                    stor[s + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                    stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                    idx = idx + 1
                    continue 
                stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < arg3.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * arg3.length) + 192
                _5095 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
                s = 0
                while arg3.length < _5095:
                    mem[mem[64] + (34 * arg3.length) + 224] = mem[(34 * arg3.length) + 160]
                    s = arg3.length + 32
                    continue 
                if arg3.length <= _5095:
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5095) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7015 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7015
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7015
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7015
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7015
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7303 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7303]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7255 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7255] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7255]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7255) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7016 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7016
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7016
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7016
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7016
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7304 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7304]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7256 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7256] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7256]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7256) + 32],
                else:
                    mem[mem[64] + (32 * arg3.length) + _5095 + 224] = 0
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5095) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7017 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7017
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7017
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7017
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7017
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7305 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7305]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7257 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7257] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7257]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7257) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7018 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7018
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7018
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7018
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7018
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7306 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7306]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7258 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7258] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7258]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7258) + 32],
        else:
            require msg.sender == metaTxRelayerAddress
            require arg2 < numBounties
            require block.timestamp < bounties[arg2].field_512
            require arg3.length > 0
            mem[64] = (32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 192] = 96
            mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 224] = arg1
            bounties[arg2].field_1792++
            stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 = arg3.length
            if not arg3.length:
                idx = 0
                while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                    stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                    idx = idx + 1
                    continue 
                stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < arg3.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * arg3.length) + 192
                _4109 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
                s = 0
                while arg3.length < _4109:
                    mem[mem[64] + (34 * arg3.length) + 224] = mem[(34 * arg3.length) + 160]
                    s = arg3.length + 32
                    continue 
                if arg3.length <= _4109:
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_4109) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6131 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6131
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6131
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6131
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6131
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6582 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6582]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6385 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6385] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6385]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6385) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6132 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6132
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6132
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6132
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6132
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6583 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6583]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6386 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6386] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6386]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6386) + 32],
                else:
                    mem[mem[64] + (32 * arg3.length) + _4109 + 224] = 0
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_4109) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6133 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6133
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6133
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6133
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6133
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6584 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6584]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6387 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6387] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6387]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6387) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _6134 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _6134
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6134
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _6134
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _6134
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6585 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6585]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _6388 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _6388] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _6388]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _6388) + 32],
            else:
                s = 0
                idx = 128
                while (32 * arg3.length) + 128 > idx:
                    stor[s + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0 > idx:
                    stor[idx + sha3((2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1))))].field_0 = 0
                    idx = idx + 1
                    continue 
                stor[(2 * bounties[arg2].field_1792) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_256 = arg1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 256] = arg2
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 288] = bounties[arg2].field_1792 - 1
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 320] = 160
                mem[(32 * arg3.length) + ceil32(arg4.length) + (32 * arg6.length) + 416] = arg3.length
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < arg3.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * arg3.length) + 192
                _5096 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * arg3.length) + 192] = mem[(32 * arg3.length) + 128]
                s = 0
                while arg3.length < _5096:
                    mem[mem[64] + (34 * arg3.length) + 224] = mem[(34 * arg3.length) + 160]
                    s = arg3.length + 32
                    continue 
                if arg3.length <= _5096:
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5096) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7019 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7019
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7019
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7019
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7019
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7307 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7307]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7259 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7259] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7259]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7259) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7020 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7020
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7020
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7020
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7020
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7308 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7308]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7260 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7260] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7260]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7260) + 32],
                else:
                    mem[mem[64] + (32 * arg3.length) + _5096 + 224] = 0
                    mem[mem[64] + 128] = arg1
                    emit 0xb9fb09db: mem[mem[64] len 128], address(arg1), mem[mem[64] + 160 len (32 * arg3.length) + ceil32(_5096) + 64]
                    if msg.sender == arg1:
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7021 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7021
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7021
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7021
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7021
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7309 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7309]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7261 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7261] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7261]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7261) + 32],
                    else:
                        require msg.sender == metaTxRelayerAddress
                        require arg2 < numBounties
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        require arg5 < bounties[arg2].field_256
                        require arg1 == stor[('array', 1, ('map', ('param', 'arg2'), ('name', 'bounties', 1))) + arg5].field_0
                        require not uint8(stor4.field_160)
                        Mask(96, 0, stor4.field_160) = 1
                        bounties[arg2].field_1536 = 1
                        mem[32] = 1
                        require bounties[arg2].field_1792 - 1 < bounties[arg2].field_1792
                        mem[0] = sha3(arg2, 1) + 7
                        require mem[(32 * arg3.length) + ceil32(arg4.length) + 160] == stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                        idx = 0
                        while idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0:
                            require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                            if mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0:
                                require idx < stor[(2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))].field_0
                                require idx < mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                                _7022 = mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                if not bounties[arg2].field_1024:
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                    require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                    mem[0] = arg2
                                    mem[32] = 1
                                    bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                    call stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0 with:
                                       value mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if bounties[arg2].field_1024 != 20:
                                        require bounties[arg2].field_1024 == 721
                                        require stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]]
                                        stor2[arg2][mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]] = 0
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 68] = _7022
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transferFrom(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args address(this.address), stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7022
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] > 0
                                        require bounties[arg2].field_1280 >= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        require mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192] <= bounties[arg2].field_1280
                                        bounties[arg2].field_1280 -= mem[(32 * idx) + (32 * arg3.length) + ceil32(arg4.length) + 192]
                                        mem[0] = arg2
                                        mem[32] = 1
                                        mem[mem[64] + 4] = stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0
                                        mem[mem[64] + 36] = _7022
                                        require ext_code.size(bounties[arg2].field_768)
                                        call bounties[arg2].field_768.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor[sha3((2 * bounties[arg2].field_1792 - 1) + ('array', 7, ('map', ('param', 'arg2'), ('name', 'bounties', 1)))) + idx].field_0, _7022
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7310 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7310]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = arg2
                        mem[mem[64] + 32] = bounties[arg2].field_1792 - 1
                        mem[mem[64] + 64] = arg1
                        mem[mem[64] + 96] = 128
                        _7262 = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 128] = mem[(32 * arg3.length) + ceil32(arg4.length) + 160]
                        mem[mem[64] + 160 len 32 * _7262] = mem[(32 * arg3.length) + ceil32(arg4.length) + 192 len 32 * _7262]
                        emit FulfillmentAccepted(uint256 arg1, uint256 arg2, address arg3, uint256[] arg4):
                                                 arg2,
                                                 bounties[arg2].field_1792 - 1,
                                                 address(arg1),
                                                 128,
                                                 mem[mem[64] + 128 len (32 * _7262) + 32],
    Mask(96, 0, stor4.field_160) = 0
}



}
