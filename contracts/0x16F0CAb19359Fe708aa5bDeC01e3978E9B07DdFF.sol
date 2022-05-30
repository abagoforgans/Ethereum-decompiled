contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - decreaseApproval(address arg1, uint256 arg2)
#  - increaseApproval(address arg1, uint256 arg2)
#
mapping of uint256 totalSupply;
mapping of uint8 stor4;
address owner;

function totalSupply() {
    return totalSupply['totalSupply']
}

function balanceOf(address arg1) {
    return totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    mem[209] = uint16(arg2), 'allowance', Mask(48, 112, arg1) >> 112 or Mask(120, 136, mem[209])
    return totalSupply['allowance'][arg1][Mask(24, 136, arg2) >> 136][mem[209 len 17]]
}

function _fallback() payable {
    revert
}

function setTransferable(bool arg1) {
    require msg.sender == owner
    stor4['transferable'] = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    mem[209] = uint16(arg1), 'allowance', Mask(48, 112, msg.sender) >> 112 or Mask(120, 136, mem[209])
    totalSupply['allowance'][msg.sender][Mask(24, 136, arg1) >> 136][mem[209 len 17]] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40] + arg2 >= totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40]
    totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40] += arg2
    require totalSupply['totalSupply'] + arg2 >= totalSupply['totalSupply']
    totalSupply[Mask(88, 80, 'totalSupply') >> 80] = totalSupply['totalSupply'] + arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require bool(stor4['transferable']) == 1
    require arg1
    require totalSupply[0][Mask(176, 80, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 80] >= arg2
    require arg2 <= totalSupply[0][Mask(176, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0) >> 40]
    totalSupply[0][Mask(176, 80, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 80] = totalSupply[0][Mask(176, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0) >> 40] - arg2
    require totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40] + arg2 >= totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40]
    totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, arg1, 0, 0) >> 40] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_7faeb6af(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor4['transferable']) == 1
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 'balance'
    mem[(32 * arg1.length) + (32 * arg2.length) + 199] = address(msg.sender)
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 27
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 219
    mem[(32 * arg1.length) + (32 * arg2.length) + 219 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + 219] = Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    mem[0] = sha3(Mask(216, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 40)
    mem[32] = 0
    require totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 40] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require mem[(32 * idx) + 140 len 20]
        require idx < mem[96]
        _219 = mem[(32 * idx) + 128]
        _220 = mem[64]
        mem[mem[64] + 32] = 'balance'
        mem[mem[64] + 39] = address(_219)
        _221 = mem[64]
        mem[mem[64]] = 27
        mem[64] = mem[64] + 59
        _223 = mem[_221]
        t = _221 + 32
        u = mem[64]
        s = mem[_221]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_221])] = mem[_221 + floor32(mem[_221]) + -(mem[_221] % 32) + 64 len mem[_221] % 32] or Mask(8 * -(mem[_221] % 32) + 32, -(8 * -(mem[_221] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_221])])
        _274 = sha3(mem[mem[64] len _223 + _220 + -mem[64] + 59])
        require idx < mem[(32 * arg1.length) + 128]
        _277 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _280 = mem[64]
        mem[mem[64] + 32] = 'balance'
        mem[mem[64] + 39] = address(msg.sender)
        _281 = mem[64]
        mem[mem[64]] = 27
        mem[64] = mem[64] + 59
        _283 = mem[_281]
        t = _281 + 32
        u = mem[64]
        s = mem[_281]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_281])] = mem[_281 + floor32(mem[_281]) + -(mem[_281] % 32) + 64 len mem[_281] % 32] or Mask(8 * -(mem[_281] % 32) + 32, -(8 * -(mem[_281] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_281])])
        mem[0] = sha3(mem[mem[64] len _283 + _280 + -mem[64] + 59])
        _318 = sha3(mem[0], 0)
        require _277 <= totalSupply[mem[0]]
        mem[0] = sha3(Mask(216, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 40)
        mem[32] = 0
        totalSupply[Mask(216, 40, Mask(16, 200, 'balance') >> 200, msg.sender, 0, 0) >> 40] = stor[_318] - _277
        require idx < mem[(32 * arg1.length) + 128]
        _322 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _324 = mem[(32 * idx) + 128]
        _325 = mem[64]
        mem[mem[64] + 32] = 'balance'
        mem[mem[64] + 39] = address(_324)
        _326 = mem[64]
        mem[mem[64]] = 27
        mem[64] = mem[64] + 59
        _328 = mem[_326]
        t = _326 + 32
        u = _325 + 59
        s = mem[_326]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_325 + floor32(mem[_326]) + 59] = mem[_326 + -(mem[_326] % 32) + floor32(mem[_326]) + 64 len mem[_326] % 32] or Mask(8 * -(mem[_326] % 32) + 32, -(8 * -(mem[_326] % 32) + 32) + 256, mem[_325 + floor32(mem[_326]) + 59])
        mem[0] = sha3(mem[_325 + 59 len _328])
        _346 = sha3(mem[0], 0)
        require totalSupply[mem[0]] + _322 >= totalSupply[mem[0]]
        mem[0] = _274
        mem[32] = 0
        totalSupply[_274] = stor[_346] + _322
        require idx < mem[96]
        _350 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_325 + 59] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[_325 + 59], msg.sender, address(_350));
        idx = idx + 1
        s = _274
        continue 
    _209 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    _266 = sha3(mem[mem[64] len 32 * _209])
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    _269 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    var22001 = floor32(_269)
    emit MultiTransfer(address arg1, address[] arg2, uint256[] arg3):
                       32,
                       mem[mem[64] + 32 len (32 * _269) + 32],
                       msg.sender,
                       _266,
}



}
