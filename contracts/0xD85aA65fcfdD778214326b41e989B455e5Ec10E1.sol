contract main {




// =====================  Runtime code  =====================


const EIP712_DOMAIN_TYPEHASH = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472


array of uint256 stor0;
array of uint256 version;
array of uint256 stor2;
mapping of uint256 vipPrice;
mapping of uint8 stor7;
mapping of uint256 stor6710629;
mapping of address stor478745093490;
mapping of uint256 stor27980790284306788;
mapping of address stor34784943920356371488173876594;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function getVipPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return vipPrice[0][arg1]
}

function getUnlimAccess(address arg1) {
    require calldata.size - 4 >= 32
    return vipPrice[Mask(88, 0, 'unlimAccess')][arg1]
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return address(stor2.length)
}

function upgradeabilityOwner() {
    return address(stor0.length)
}

function owner() {
    return stor5[('name', 'stor6F77', 478745093490)]
}

function getAllVipPrices() {
    return uint256(stor3[('name', 'stor0', 0)]), 
           stor3[('map', 0, ('name', 'version', 1))],
           uint256(stor3[('map', 0, ('name', 'stor2', 2))])
}

function fee() {
    return stor3[('name', 'stor6665', 6710629)]
}

function pendingOwner() {
    return stor5[('name', 'stor7065', 34784943920356371488173876594)]
}

function _fallback() payable {
  stop
}

function hash(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sha3(0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25, address(arg1), arg2)
}

function setVipPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    vipPrice[0][arg1] = arg2
}

function currentFee(address arg1) {
    require calldata.size - 4 >= 32
    if vipPrice[Mask(88, 0, 'unlimAccess')][arg1] < block.timestamp:
        return stor3[('name', 'stor6665', 6710629)]
    else:
        return 0
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    stor3[('name', 'stor6665', 6710629)] = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg1
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = arg1
}

function DOMAIN_SEPARATOR() {
    return sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
}

function getDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return (block.timestamp + (24 * 3600))
    if 1 == arg1:
        return (block.timestamp + (168 * 24 * 3600))
    if arg1 != 2:
        return 0
    return (block.timestamp + (876000 * 24 * 3600))
}

function claimOwnership() {
    require msg.sender == stor5[('name', 'stor7065', 34784943920356371488173876594)]
    emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], stor5[('name', 'stor7065', 34784943920356371488173876594)]);
    stor5[('name', 'stor6F77', 478745093490)] = stor5[('name', 'stor7065', 34784943920356371488173876594)]
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = 0
}

function buyVip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.value >= vipPrice[0][arg1]
    if not arg1:
        vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg1:
            vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg1 != 2:
                vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = 0
            else:
                vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] = block.timestamp + (876000 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg1);
}

function setAddressToVip(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    if not arg2:
        vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg2:
            vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg2 != 2:
                vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = 0
            else:
                vipPrice[Mask(88, 0, 'unlimAccess')][arg1] = block.timestamp + (876000 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg2);
}

function sub_829fb13c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[13435 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if stor7['rs_multisender_initialized']:
        require msg.sender == stor5[('name', 'stor6F77', 478745093490)]
    emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], arg1);
    stor5[('name', 'stor6F77', 478745093490)] = arg1
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    require arg2
    stor3[('name', 'stor6665', 6710629)] = arg2
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('name', 'stor0', 0)]) = arg3
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    stor3[('map', 0, ('name', 'version', 1))] = arg4
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = arg5
    stor3[('name', 'stor6368', 27980790284306788)] = arg6
    stor7['rs_multisender_initialized'] = 1
}

function claimTokens(address arg1) {
    require calldata.size - 4 >= 32
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        revert with 0, 'not an owner'
    if not arg1:
        call stor5[('name', 'stor6F77', 478745093490)] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(address(arg1), stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]);
}

function sub_40d6f059(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 < block.timestamp:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(arg2.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + 224] = arg1
    mem[ceil32(arg2.length) + 128] = 96
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_723d1661(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 192 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
    return Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 192 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), 
}

function recoverAddress(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    mem[ceil32(arg2.length) + 160] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(arg2.length) + 192] = sha3(Mask(88, -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256)
    mem[ceil32(arg2.length) + 224] = sha3(Mask(24, -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256)
    mem[ceil32(arg2.length) + 256] = vipPrice[Mask(56, -(8 * ceil32(arg2.length) + -arg2.length + 7) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc8 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256]
    mem[ceil32(arg2.length) + 288] = this.address
    mem[ceil32(arg2.length) + 320] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(arg2.length) + 128] = 192
    signer = erecover(sha3(0, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), arg1), 0, _2, _3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not arg1.length:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    require msg.value <= eth.balance(this.address)
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        require 0 <= msg.value
        idx = 0
        s = msg.value
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] <= s
            idx = idx + 1
            s = s - cd[((32 * idx) + arg2 + 36)]
            continue 
        if s:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    else:
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        idx = 0
        s = msg.value - stor3[('name', 'stor6665', 6710629)]
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] <= s
            idx = idx + 1
            s = s - cd[((32 * idx) + arg2 + 36)]
            continue 
        if s:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require stor3[('name', 'stor6665', 6710629)] >= 0
        if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    emit 0x7904afd2: s, 48879
}

function sub_dc2608a5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'no contributors sent'
    require msg.value <= eth.balance(this.address)
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        require 0 <= msg.value
        if not ('cd', 4).length:
            if msg.value:
                revert with 0, 'wrong eth value was sent'
        else:
            require cd[36] * ('cd', 4).length / ('cd', 4).length == cd[36]
            if cd[36] * ('cd', 4).length != msg.value:
                revert with 0, 'wrong eth value was sent'
        idx = 0
        s = msg.value
        while idx < ('cd', 4).length:
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[36] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require cd[36] <= s
            idx = idx + 1
            s = s - cd[36]
            continue 
        if s:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    else:
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        if not ('cd', 4).length:
            if msg.value - stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'wrong eth value was sent'
        else:
            require cd[36] * ('cd', 4).length / ('cd', 4).length == cd[36]
            if msg.value - stor3[('name', 'stor6665', 6710629)] != cd[36] * ('cd', 4).length:
                revert with 0, 'wrong eth value was sent'
        idx = 0
        s = msg.value - stor3[('name', 'stor6665', 6710629)]
        while idx < ('cd', 4).length:
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[36] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                idx = idx + 1
                s = s
                continue 
            require cd[36] <= s
            idx = idx + 1
            s = s - cd[36]
            continue 
        if s:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require stor3[('name', 'stor6665', 6710629)] >= 0
        if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
            revert with 0, 32, 38, 0xfe646f6ee28099742074727920746f2074616b652074686520636f6e7472616374206d6f6e65, mem[265 len 26]
    emit 0x7904afd2: s, 48879
}

function etherFindBadAddresses(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not arg1.length:
        revert with 0, 'no contributors sent'
    if arg1.length != arg2.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = arg1.length
    else:
        mem[128 len 32 * arg1.length] = code.data[13435 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg1.length
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[13435 len 32 * arg1.length]
    mem[(64 * arg1.length) + 192] = 'unlimAccess' << 168
    mem[(64 * arg1.length) + 203] = address(msg.sender)
    mem[(64 * arg1.length) + 160] = (127 * arg1.length) + 31
    if vipPrice[mem[(64 * arg1.length) + 192 len (127 * arg1.length) + 31]] < block.timestamp:
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] <= msg.value - stor3[('name', 'stor6665', 6710629)]
                idx = idx + 1
                continue 
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = cd[((32 * idx) + arg2 + 36)]
            idx = idx + 1
            continue 
    else:
        require 0 <= msg.value
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            call address(cd[((32 * idx) + arg1 + 36)]) with:
               value cd[((32 * idx) + arg2 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < arg2.length
                require cd[((32 * idx) + arg2 + 36)] <= msg.value
                idx = idx + 1
                continue 
            require idx < arg1.length
            require idx < arg1.length
            mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = cd[((32 * idx) + arg2 + 36)]
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 223] = 64
    mem[(64 * arg1.length) + 287] = arg1.length
    mem[(64 * arg1.length) + 319 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 255] = (32 * arg1.length) + 96
    mem[(98 * arg1.length) + 319] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 351 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return memory
      from (64 * arg1.length) + 223
       len (32 * mem[(32 * arg1.length) + 128]) + (161 * arg1.length) + 128
}

function sub_310075ed(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[64] = 159
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        if not ('cd', 36).length:
            revert with 0, 'no contributors sent'
        require cd[68] * ('cd', 36).length / ('cd', 36).length == cd[68]
        mem[163] = msg.sender
        mem[195] = this.address
        mem[227] = cd[68] * ('cd', 36).length
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[68] * ('cd', 36).length
        mem[159] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            _103 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[68]
            _104 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_104 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_104 + 36 len 28]
            _107 = mem[_104]
            u = _104 + 32
            v = _103 + 100
            t = mem[_104]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_103 + floor32(mem[_104]) + 100] = mem[_104 + -(mem[_104] % 32) + floor32(mem[_104]) + 64 len mem[_104] % 32] or Mask(8 * -(mem[_104] % 32) + 32, -(8 * -(mem[_104] % 32) + 32) + 256, mem[_103 + floor32(mem[_104]) + 100])
            call address(cd[4]).mem[_103 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_103 + 104 len _107 - 4]
            if return_data.size:
                mem[64] = _103 + ceil32(return_data.size) + 101
                mem[_103 + 100] = return_data.size
                mem[_103 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = cd[68] + s
            continue 
    else:
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
            if not ('cd', 36).length:
                revert with 0, 'no contributors sent'
            require cd[68] * ('cd', 36).length / ('cd', 36).length == cd[68]
            mem[163] = msg.sender
            mem[195] = this.address
            mem[227] = cd[68] * ('cd', 36).length
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[68] * ('cd', 36).length
            mem[159] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                _81 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[68]
                _82 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_82 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_82 + 36 len 28]
                _85 = mem[_82]
                u = _82 + 32
                v = _81 + 100
                t = mem[_82]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_81 + floor32(mem[_82]) + 100] = mem[_82 + -(mem[_82] % 32) + floor32(mem[_82]) + 64 len mem[_82] % 32] or Mask(8 * -(mem[_82] % 32) + 32, -(8 * -(mem[_82] % 32) + 32) + 256, mem[_81 + floor32(mem[_82]) + 100])
                call address(cd[4]).mem[_81 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_81 + 104 len _85 - 4]
                if return_data.size:
                    mem[64] = _81 + ceil32(return_data.size) + 101
                    mem[_81 + 100] = return_data.size
                    mem[_81 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = cd[68] + s
                continue 
        else:
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'no fee'
            if not ('cd', 36).length:
                revert with 0, 'no contributors sent'
            require cd[68] * ('cd', 36).length / ('cd', 36).length == cd[68]
            mem[163] = msg.sender
            mem[195] = this.address
            mem[227] = cd[68] * ('cd', 36).length
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[68] * ('cd', 36).length
            mem[159] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                _92 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[68]
                _93 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_93 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_93 + 36 len 28]
                _96 = mem[_93]
                u = _93 + 32
                v = _92 + 100
                t = mem[_93]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_92 + floor32(mem[_93]) + 100] = mem[_93 + -(mem[_93] % 32) + floor32(mem[_93]) + 64 len mem[_93] % 32] or Mask(8 * -(mem[_93] % 32) + 32, -(8 * -(mem[_93] % 32) + 32) + 256, mem[_92 + floor32(mem[_93]) + 100])
                call address(cd[4]).mem[_92 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_92 + 104 len _96 - 4]
                if return_data.size:
                    mem[64] = _92 + ceil32(return_data.size) + 101
                    mem[_92 + 100] = return_data.size
                    mem[_92 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = cd[68] + s
                continue 
    if s:
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit 0x7904afd2: cd[68] * ('cd', 36).length, address(cd[4])
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not arg2.length:
        revert with 0, 'no contributors sent'
    if arg2.length != arg3.length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[64] = 159
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        mem[163] = msg.sender
        mem[195] = this.address
        mem[227] = arg4
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg4
        mem[159] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg3.length
            _99 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
            _100 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_100 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_100 + 36 len 28]
            _103 = mem[_100]
            u = _100 + 32
            v = _99 + 100
            t = mem[_100]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_99 + floor32(mem[_100]) + 100] = mem[_100 + -(mem[_100] % 32) + floor32(mem[_100]) + 64 len mem[_100] % 32] or Mask(8 * -(mem[_100] % 32) + 32, -(8 * -(mem[_100] % 32) + 32) + 256, mem[_99 + floor32(mem[_100]) + 100])
            call arg1.mem[_99 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_99 + 104 len _103 - 4]
            if return_data.size:
                mem[64] = _99 + ceil32(return_data.size) + 101
                mem[_99 + 100] = return_data.size
                mem[_99 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                idx = idx + 1
                s = s
                continue 
            if idx < arg3.length:
                idx = idx + 1
                s = s + cd[((32 * idx) + arg3 + 36)]
                continue 
            revert
    else:
        mem[0] = sha3(6710629)
        mem[32] = 3
        if not stor3[('name', 'stor6665', 6710629)]:
            mem[163] = msg.sender
            mem[195] = this.address
            mem[227] = arg4
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg4
            mem[159] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < arg2.length:
                require idx < arg3.length
                _89 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _90 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_90 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_90 + 36 len 28]
                _93 = mem[_90]
                u = _90 + 32
                v = _89 + 100
                t = mem[_90]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_89 + floor32(mem[_90]) + 100] = mem[_90 + -(mem[_90] % 32) + floor32(mem[_90]) + 64 len mem[_90] % 32] or Mask(8 * -(mem[_90] % 32) + 32, -(8 * -(mem[_90] % 32) + 32) + 256, mem[_89 + floor32(mem[_90]) + 100])
                call arg1.mem[_89 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_89 + 104 len _93 - 4]
                if return_data.size:
                    mem[64] = _89 + ceil32(return_data.size) + 101
                    mem[_89 + 100] = return_data.size
                    mem[_89 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < arg3.length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + arg3 + 36)]
                    continue 
                revert
        else:
            if msg.value < stor3[('name', 'stor6665', 6710629)]:
                revert with 0, 'no fee'
            mem[163] = msg.sender
            mem[195] = this.address
            mem[227] = arg4
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg4
            mem[159] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < arg2.length:
                require idx < arg3.length
                _94 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
                _95 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_95 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_95 + 36 len 28]
                _98 = mem[_95]
                u = _95 + 32
                v = _94 + 100
                t = mem[_95]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_94 + floor32(mem[_95]) + 100] = mem[_95 + -(mem[_95] % 32) + floor32(mem[_95]) + 64 len mem[_95] % 32] or Mask(8 * -(mem[_95] % 32) + 32, -(8 * -(mem[_95] % 32) + 32) + 256, mem[_94 + floor32(mem[_95]) + 100])
                call arg1.mem[_94 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_94 + 104 len _98 - 4]
                if return_data.size:
                    mem[64] = _94 + ceil32(return_data.size) + 101
                    mem[_94 + 100] = return_data.size
                    mem[_94 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < arg3.length:
                    idx = idx + 1
                    s = s + cd[((32 * idx) + arg3 + 36)]
                    continue 
                revert
    if s:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit 0x7904afd2: arg4, arg1
}

function sub_b98555a0(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[96] = ('cd', 132).length
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    if cd[164] < block.timestamp:
        revert with 0, 
                    32,
                    39,
                    0x746865207369676e617475726520697320696e76616c6964206f72206861732065787069726500,
                    mem[ceil32(('cd', 132).length) + 235 len 25]
    mem[ceil32(('cd', 132).length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(('cd', 132).length) + 192] = msg.sender
    mem[ceil32(('cd', 132).length) + 224] = cd[164]
    mem[ceil32(('cd', 132).length) + 128] = 96
    _5 = sha3(mem[ceil32(('cd', 132).length) + 160 len Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[('cd', 132).length + 160 len -('cd', 132).length + ceil32(('cd', 132).length)]])
    mem[ceil32(('cd', 132).length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(('cd', 132).length) + 320] = sha3(93641805625544816009176434)
    mem[ceil32(('cd', 132).length) + 352] = sha3(3288624)
    mem[ceil32(('cd', 132).length) + 384] = stor3[('name', 'stor6368', 27980790284306788)]
    mem[ceil32(('cd', 132).length) + 416] = this.address
    mem[ceil32(('cd', 132).length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(('cd', 132).length) + 256] = 192
    mem[ceil32(('cd', 132).length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 132).length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(('cd', 132).length) + 546] = _5
    mem[ceil32(('cd', 132).length) + 480] = 66
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], this.address, 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _5), 0, mem[128], mem[160]) 
    mem[ceil32(('cd', 132).length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    39,
                    0x746865207369676e617475726520697320696e76616c6964206f722068617320657870697265,
                    mem[171 len 21],
                    mem[ceil32(('cd', 132).length) + 738 len 4]
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[ceil32(('cd', 132).length) + 642] = 'unlimAccess' << 168
    mem[ceil32(('cd', 132).length) + 653] = address(signer)
    mem[ceil32(('cd', 132).length) + 610] = 31
    mem[64] = ceil32(('cd', 132).length) + 673
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), address(signer))
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][address(signer)] >= block.timestamp:
        if msg.value < 0:
            revert with 0, 'no fee'
        mem[ceil32(('cd', 132).length) + 677] = address(signer)
        mem[ceil32(('cd', 132).length) + 709] = this.address
        mem[ceil32(('cd', 132).length) + 741] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args address(signer), this.address, cd[100]
        mem[ceil32(('cd', 132).length) + 673] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _105 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _106 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_106 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_106 + 36 len 28]
            _109 = mem[_106]
            u = _106 + 32
            v = mem[64]
            t = mem[_106]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_106])] = mem[_106 + floor32(mem[_106]) + -(mem[_106] % 32) + 64 len mem[_106] % 32] or Mask(8 * -(mem[_106] % 32) + 32, -(8 * -(mem[_106] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_106])])
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _109 + _105 + -mem[64] + 96]
            if return_data.size:
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_139] = return_data.size
                mem[_139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                idx = idx + 1
                s = s
                continue 
            if idx < ('cd', 68).length:
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[68] + 36)]
                continue 
            revert
    else:
        mem[0] = sha3(6710629)
        mem[32] = 3
        if msg.value < stor3[('name', 'stor6665', 6710629)]:
            revert with 0, 'no fee'
        mem[ceil32(('cd', 132).length) + 677] = address(signer)
        mem[ceil32(('cd', 132).length) + 709] = this.address
        mem[ceil32(('cd', 132).length) + 741] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args address(signer), this.address, cd[100]
        mem[ceil32(('cd', 132).length) + 673] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _100 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _101 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_101 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_101 + 36 len 28]
            _104 = mem[_101]
            u = _101 + 32
            v = _100 + 100
            t = mem[_101]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_100 + floor32(mem[_101]) + 100] = mem[_101 + -(mem[_101] % 32) + floor32(mem[_101]) + 64 len mem[_101] % 32] or Mask(8 * -(mem[_101] % 32) + 32, -(8 * -(mem[_101] % 32) + 32) + 256, mem[_100 + floor32(mem[_101]) + 100])
            call address(cd[4]).mem[_100 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_100 + 104 len _104 - 4]
            if return_data.size:
                mem[64] = _100 + ceil32(return_data.size) + 101
                mem[_100 + 100] = return_data.size
                mem[_100 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                idx = idx + 1
                s = s
                continue 
            if idx < ('cd', 68).length:
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[68] + 36)]
                continue 
            revert
    if s:
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(signer), s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit 0x7904afd2: cd[100], address(cd[4])
}

function sub_b0ab5f36(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 32, 24, 0x17646966666572656e7420617272617973206c656e6774687300000000000000
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[0] = sha3(Mask(88, 0, 'unlimAccess'), msg.sender)
    mem[32] = 3
    if vipPrice[Mask(88, 0, 'unlimAccess')][msg.sender] >= block.timestamp:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            mem[(64 * ('cd', 36).length) + 227] = msg.sender
            mem[(64 * ('cd', 36).length) + 259] = this.address
            mem[(64 * ('cd', 36).length) + 291] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
            mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _217 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _218 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_218 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_218 + 36 len 28]
                _221 = mem[_218]
                t = _218 + 32
                u = _217 + 100
                s = mem[_218]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_217 + floor32(mem[_218]) + 100] = mem[_218 + -(mem[_218] % 32) + floor32(mem[_218]) + 64 len mem[_218] % 32] or Mask(8 * -(mem[_218] % 32) + 32, -(8 * -(mem[_218] % 32) + 32) + 256, mem[_217 + floor32(mem[_218]) + 100])
                call address(cd[4]).mem[_217 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_217 + 104 len _221 - 4]
                if return_data.size:
                    mem[64] = _217 + ceil32(return_data.size) + 101
                    mem[_217 + 100] = return_data.size
                    mem[_217 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _191 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _193 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _193) + _191 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _340 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _193) + _191 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _340) + (32 * _193) + _191 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 227] = msg.sender
        mem[(64 * ('cd', 36).length) + 259] = this.address
        mem[(64 * ('cd', 36).length) + 291] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
        mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _222 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _223 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_223 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_223 + 36 len 28]
            _226 = mem[_223]
            t = _223 + 32
            u = _222 + 100
            s = mem[_223]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_222 + floor32(mem[_223]) + 100] = mem[_223 + -(mem[_223] % 32) + floor32(mem[_223]) + 64 len mem[_223] % 32] or Mask(8 * -(mem[_223] % 32) + 32, -(8 * -(mem[_223] % 32) + 32) + 256, mem[_222 + floor32(mem[_223]) + 100])
            call address(cd[4]).mem[_222 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_222 + 104 len _226 - 4]
            if return_data.size:
                mem[64] = _222 + ceil32(return_data.size) + 101
                mem[_222 + 100] = return_data.size
                mem[_222 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _194 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _196 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _196) + _194 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _347 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _196) + _194 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _347) + (32 * _196) + _194 + -mem[64] + 128
    mem[0] = sha3(6710629)
    mem[32] = 3
    if not stor3[('name', 'stor6665', 6710629)]:
        mem[159] = ('cd', 36).length
        if not ('cd', 36).length:
            mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
            mem[64] = (64 * ('cd', 36).length) + 223
            mem[(64 * ('cd', 36).length) + 227] = msg.sender
            mem[(64 * ('cd', 36).length) + 259] = this.address
            mem[(64 * ('cd', 36).length) + 291] = cd[100]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
            mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                _197 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                _198 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_198 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_198 + 36 len 28]
                _201 = mem[_198]
                t = _198 + 32
                u = _197 + 100
                s = mem[_198]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_197 + floor32(mem[_198]) + 100] = mem[_198 + -(mem[_198] % 32) + floor32(mem[_198]) + 64 len mem[_198] % 32] or Mask(8 * -(mem[_198] % 32) + 32, -(8 * -(mem[_198] % 32) + 32) + 256, mem[_197 + floor32(mem[_198]) + 100])
                call address(cd[4]).mem[_197 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_197 + 104 len _201 - 4]
                if return_data.size:
                    mem[64] = _197 + ceil32(return_data.size) + 101
                    mem[_197 + 100] = return_data.size
                    mem[_197 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require idx < mem[159]
                    mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                    require idx < ('cd', 68).length
                    require idx < mem[(32 * ('cd', 36).length) + 191]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
                idx = idx + 1
                continue 
            _179 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[159]
            _181 = mem[159]
            mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
            mem[mem[64] + 32] = (32 * mem[159]) + 96
            mem[(32 * _181) + _179 + 96] = mem[(32 * ('cd', 36).length) + 191]
            _312 = mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * _181) + _179 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
            return memory
              from mem[64]
               len (32 * _312) + (32 * _181) + _179 + -mem[64] + 128
        mem[191 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
        mem[(64 * ('cd', 36).length) + 227] = msg.sender
        mem[(64 * ('cd', 36).length) + 259] = this.address
        mem[(64 * ('cd', 36).length) + 291] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
        mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _202 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _203 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_203 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_203 + 36 len 28]
            _206 = mem[_203]
            t = _203 + 32
            u = _202 + 100
            s = mem[_203]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_202 + floor32(mem[_203]) + 100] = mem[_203 + -(mem[_203] % 32) + floor32(mem[_203]) + 64 len mem[_203] % 32] or Mask(8 * -(mem[_203] % 32) + 32, -(8 * -(mem[_203] % 32) + 32) + 256, mem[_202 + floor32(mem[_203]) + 100])
            call address(cd[4]).mem[_202 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_202 + 104 len _206 - 4]
            if return_data.size:
                mem[64] = _202 + ceil32(return_data.size) + 101
                mem[_202 + 100] = return_data.size
                mem[_202 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _182 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _184 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _184) + _182 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _319 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _184) + _182 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _319) + (32 * _184) + _182 + -mem[64] + 128
    if msg.value < stor3[('name', 'stor6665', 6710629)]:
        revert with 0, 'no fee'
    mem[159] = ('cd', 36).length
    if not ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
        mem[64] = (64 * ('cd', 36).length) + 223
        mem[(64 * ('cd', 36).length) + 227] = msg.sender
        mem[(64 * ('cd', 36).length) + 259] = this.address
        mem[(64 * ('cd', 36).length) + 291] = cd[100]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
        mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 68).length
            _207 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
            _208 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_208 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_208 + 36 len 28]
            _211 = mem[_208]
            t = _208 + 32
            u = _207 + 100
            s = mem[_208]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_207 + floor32(mem[_208]) + 100] = mem[_208 + -(mem[_208] % 32) + floor32(mem[_208]) + 64 len mem[_208] % 32] or Mask(8 * -(mem[_208] % 32) + 32, -(8 * -(mem[_208] % 32) + 32) + 256, mem[_207 + floor32(mem[_208]) + 100])
            call address(cd[4]).mem[_207 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_207 + 104 len _211 - 4]
            if return_data.size:
                mem[64] = _207 + ceil32(return_data.size) + 101
                mem[_207 + 100] = return_data.size
                mem[_207 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < ('cd', 36).length
                require idx < mem[159]
                mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
                require idx < ('cd', 68).length
                require idx < mem[(32 * ('cd', 36).length) + 191]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _185 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[159]
        _187 = mem[159]
        mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
        mem[mem[64] + 32] = (32 * mem[159]) + 96
        mem[(32 * _187) + _185 + 96] = mem[(32 * ('cd', 36).length) + 191]
        _326 = mem[(32 * ('cd', 36).length) + 191]
        mem[(32 * _187) + _185 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
        return memory
          from mem[64]
           len (32 * _326) + (32 * _187) + _185 + -mem[64] + 128
    mem[191 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 191] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 223
    mem[(32 * ('cd', 36).length) + 223 len 32 * ('cd', 36).length] = code.data[13435 len 32 * ('cd', 36).length]
    mem[(64 * ('cd', 36).length) + 227] = msg.sender
    mem[(64 * ('cd', 36).length) + 259] = this.address
    mem[(64 * ('cd', 36).length) + 291] = cd[100]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args mem[(64 * ('cd', 36).length) + 227 len (127 * ('cd', 36).length) + 96]
    mem[(64 * ('cd', 36).length) + 223] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _212 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        _213 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_213 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_213 + 36 len 28]
        _216 = mem[_213]
        t = _213 + 32
        u = _212 + 100
        s = mem[_213]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_212 + floor32(mem[_213]) + 100] = mem[_213 + -(mem[_213] % 32) + floor32(mem[_213]) + 64 len mem[_213] % 32] or Mask(8 * -(mem[_213] % 32) + 32, -(8 * -(mem[_213] % 32) + 32) + 256, mem[_212 + floor32(mem[_213]) + 100])
        call address(cd[4]).mem[_212 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_212 + 104 len _216 - 4]
        if return_data.size:
            mem[64] = _212 + ceil32(return_data.size) + 101
            mem[_212 + 100] = return_data.size
            mem[_212 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            require idx < ('cd', 36).length
            require idx < mem[159]
            mem[(32 * idx) + 191] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 68).length
            require idx < mem[(32 * ('cd', 36).length) + 191]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 223] = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
    _188 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[159]
    _190 = mem[159]
    mem[mem[64] + 96 len floor32(mem[159])] = mem[191 len floor32(mem[159])]
    mem[mem[64] + 32] = (32 * mem[159]) + 96
    mem[(32 * _190) + _188 + 96] = mem[(32 * ('cd', 36).length) + 191]
    _333 = mem[(32 * ('cd', 36).length) + 191]
    mem[(32 * _190) + _188 + 128 len floor32(mem[(32 * ('cd', 36).length) + 191])] = mem[(32 * ('cd', 36).length) + 223 len floor32(mem[(32 * ('cd', 36).length) + 191])]
    return memory
      from mem[64]
       len (32 * _333) + (32 * _190) + _188 + -mem[64] + 128
}



}
