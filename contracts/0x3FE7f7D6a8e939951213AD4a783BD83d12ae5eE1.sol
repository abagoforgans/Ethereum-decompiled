contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 8355]
}



// =====================  Runtime code  =====================


const name = 'VeChain Token'

const decimals = 18

const symbol = 'VEN'


address owner;
uint128 totalSupply;
uint128 stor1; offset 128
mapping of struct lastMintedTimestamp;
mapping of uint256 allowance;
uint256 stor4;

function totalSupply() {
    return totalSupply
}

function lastMintedTimestamp(address arg1) {
    return lastMintedTimestamp[address(arg1)].field_224
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function isSealed() {
    return not owner
}

function seal() {
    require msg.sender == owner
    owner = 0
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function offerBonus(uint256 arg1) {
    require msg.sender == owner
    require stor4 + arg1 >= stor4
    stor4 += arg1
    require arg1 + totalSupply >= arg1
    require uint128(arg1 + totalSupply) == arg1 + totalSupply
    totalSupply = uint128(arg1 + totalSupply)
    emit Transfer(arg1, 0, this.address);
}

function mint(address arg1, uint256 arg2, bool arg3, uint32 arg4) {
    require msg.sender == owner
    if not arg3:
        require arg2 + lastMintedTimestamp[address(arg1)].field_0 >= arg2
        require Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_0) == arg2 + lastMintedTimestamp[address(arg1)].field_0
        lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_0)
    else:
        require arg2 + lastMintedTimestamp[address(arg1)].field_112 >= arg2
        require Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_112) == arg2 + lastMintedTimestamp[address(arg1)].field_112
        lastMintedTimestamp[address(arg1)].field_112 = Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_112)
        require arg2 + stor1 >= arg2
        require uint128(arg2 + stor1) == arg2 + stor1
        stor1 = uint128(arg2 + stor1)
    lastMintedTimestamp[address(arg1)].field_224 = arg4
    require arg2 + totalSupply >= arg2
    require uint128(arg2 + totalSupply) == arg2 + totalSupply
    totalSupply = uint128(arg2 + totalSupply)
    emit Transfer(arg2, 0, arg1);
}

function balanceOf(address arg1) {
    if not lastMintedTimestamp[address(arg1)].field_112:
        return lastMintedTimestamp[address(arg1)].field_0
    if stor4 <= 0:
        if lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112 >= lastMintedTimestamp[address(arg1)].field_0:
            return (lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
    else:
        if not stor4:
            if stor1:
                if (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 >= stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1:
                    if lastMintedTimestamp[address(arg1)].field_112 >= 0:
                        return ((stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
        else:
            if stor4:
                if stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor4 == lastMintedTimestamp[address(arg1)].field_112:
                    if stor1:
                        if (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 >= stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1:
                            if lastMintedTimestamp[address(arg1)].field_112 >= 0:
                                return ((stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
    revert
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(arg1):
                call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                if ext_call.success:
                    return 1
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            if ext_code.size(arg1):
                call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return 1
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(arg1):
            call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
            if ext_call.success:
                return 1
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not owner
    if lastMintedTimestamp[address(arg1)].field_112:
        if not lastMintedTimestamp[address(arg1)].field_112:
            require lastMintedTimestamp[address(arg1)].field_0 <= lastMintedTimestamp[address(arg1)].field_0
            require lastMintedTimestamp[address(arg1)].field_112 <= 0
            require lastMintedTimestamp[address(arg1)].field_0 == lastMintedTimestamp[address(arg1)].field_0
            lastMintedTimestamp[address(arg1)].field_0 = lastMintedTimestamp[address(arg1)].field_0
            lastMintedTimestamp[address(arg1)].field_112 = 0
            if -lastMintedTimestamp[address(arg1)].field_112 > 0:
                emit Transfer(-lastMintedTimestamp[address(arg1)].field_112, this.address, arg1);
        else:
            if stor4 <= 0:
                require lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112 >= lastMintedTimestamp[address(arg1)].field_0
                require lastMintedTimestamp[address(arg1)].field_0 <= lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                require lastMintedTimestamp[address(arg1)].field_112 <= lastMintedTimestamp[address(arg1)].field_112
                require Mask(112, 0, lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112) == lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
                lastMintedTimestamp[address(arg1)].field_112 = 0
            else:
                if stor4:
                    require stor4
                    require stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor4 == lastMintedTimestamp[address(arg1)].field_112
                require stor1
                require (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 >= stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1
                require lastMintedTimestamp[address(arg1)].field_112 >= 0
                require lastMintedTimestamp[address(arg1)].field_0 <= (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                require lastMintedTimestamp[address(arg1)].field_112 <= (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_112
                require Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112) == (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
                lastMintedTimestamp[address(arg1)].field_112 = 0
                if stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1 > 0:
                    emit Transfer((stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1), this.address, arg1);
    require not owner
    if lastMintedTimestamp[address(arg2)].field_112:
        if not lastMintedTimestamp[address(arg2)].field_112:
            require lastMintedTimestamp[address(arg2)].field_0 <= lastMintedTimestamp[address(arg2)].field_0
            require lastMintedTimestamp[address(arg2)].field_112 <= 0
            require lastMintedTimestamp[address(arg2)].field_0 == lastMintedTimestamp[address(arg2)].field_0
            lastMintedTimestamp[address(arg2)].field_0 = lastMintedTimestamp[address(arg2)].field_0
            lastMintedTimestamp[address(arg2)].field_112 = 0
            if -lastMintedTimestamp[address(arg2)].field_112 > 0:
                emit Transfer(-lastMintedTimestamp[address(arg2)].field_112, this.address, arg2);
        else:
            if stor4 <= 0:
                require lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112 >= lastMintedTimestamp[address(arg2)].field_0
                require lastMintedTimestamp[address(arg2)].field_0 <= lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112
                require lastMintedTimestamp[address(arg2)].field_112 <= lastMintedTimestamp[address(arg2)].field_112
                require Mask(112, 0, lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112) == lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112
                lastMintedTimestamp[address(arg2)].field_0 = Mask(112, 0, lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112)
                lastMintedTimestamp[address(arg2)].field_112 = 0
            else:
                if stor4:
                    require stor4
                    require stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor4 == lastMintedTimestamp[address(arg2)].field_112
                require stor1
                require (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_0 >= stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1
                require lastMintedTimestamp[address(arg2)].field_112 >= 0
                require lastMintedTimestamp[address(arg2)].field_0 <= (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112
                require lastMintedTimestamp[address(arg2)].field_112 <= (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_112
                require Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112) == (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112
                lastMintedTimestamp[address(arg2)].field_0 = Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1) + lastMintedTimestamp[address(arg2)].field_0 + lastMintedTimestamp[address(arg2)].field_112)
                lastMintedTimestamp[address(arg2)].field_112 = 0
                if stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1 > 0:
                    emit Transfer((stor4 * lastMintedTimestamp[address(arg2)].field_112 / stor1), this.address, arg2);
    if lastMintedTimestamp[address(arg1)].field_0 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, lastMintedTimestamp[address(arg1)].field_0 - arg3)
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + lastMintedTimestamp[address(arg2)].field_0 >= arg3
    require Mask(112, 0, arg3 + lastMintedTimestamp[address(arg2)].field_0) == arg3 + lastMintedTimestamp[address(arg2)].field_0
    lastMintedTimestamp[address(arg2)].field_0 = Mask(112, 0, arg3 + lastMintedTimestamp[address(arg2)].field_0)
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not owner
    if lastMintedTimestamp[address(msg.sender)].field_112:
        if not lastMintedTimestamp[address(msg.sender)].field_112:
            require lastMintedTimestamp[address(msg.sender)].field_0 <= lastMintedTimestamp[address(msg.sender)].field_0
            require lastMintedTimestamp[address(msg.sender)].field_112 <= 0
            require lastMintedTimestamp[address(msg.sender)].field_0 == lastMintedTimestamp[address(msg.sender)].field_0
            lastMintedTimestamp[address(msg.sender)].field_0 = lastMintedTimestamp[address(msg.sender)].field_0
            lastMintedTimestamp[address(msg.sender)].field_112 = 0
            if -lastMintedTimestamp[address(msg.sender)].field_112 > 0:
                emit Transfer(-lastMintedTimestamp[address(msg.sender)].field_112, this.address, msg.sender);
        else:
            if stor4 <= 0:
                require lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112 >= lastMintedTimestamp[address(msg.sender)].field_0
                require lastMintedTimestamp[address(msg.sender)].field_0 <= lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112
                require lastMintedTimestamp[address(msg.sender)].field_112 <= lastMintedTimestamp[address(msg.sender)].field_112
                require Mask(112, 0, lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112) == lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112
                lastMintedTimestamp[address(msg.sender)].field_0 = Mask(112, 0, lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112)
                lastMintedTimestamp[address(msg.sender)].field_112 = 0
            else:
                if stor4:
                    require stor4
                    require stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor4 == lastMintedTimestamp[address(msg.sender)].field_112
                require stor1
                require (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_0 >= stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1
                require lastMintedTimestamp[address(msg.sender)].field_112 >= 0
                require lastMintedTimestamp[address(msg.sender)].field_0 <= (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112
                require lastMintedTimestamp[address(msg.sender)].field_112 <= (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_112
                require Mask(112, 0, (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112) == (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112
                lastMintedTimestamp[address(msg.sender)].field_0 = Mask(112, 0, (stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1) + lastMintedTimestamp[address(msg.sender)].field_0 + lastMintedTimestamp[address(msg.sender)].field_112)
                lastMintedTimestamp[address(msg.sender)].field_112 = 0
                if stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1 > 0:
                    emit Transfer((stor4 * lastMintedTimestamp[address(msg.sender)].field_112 / stor1), this.address, msg.sender);
    require not owner
    if lastMintedTimestamp[address(arg1)].field_112:
        if not lastMintedTimestamp[address(arg1)].field_112:
            require lastMintedTimestamp[address(arg1)].field_0 <= lastMintedTimestamp[address(arg1)].field_0
            require lastMintedTimestamp[address(arg1)].field_112 <= 0
            require lastMintedTimestamp[address(arg1)].field_0 == lastMintedTimestamp[address(arg1)].field_0
            lastMintedTimestamp[address(arg1)].field_0 = lastMintedTimestamp[address(arg1)].field_0
            lastMintedTimestamp[address(arg1)].field_112 = 0
            if -lastMintedTimestamp[address(arg1)].field_112 > 0:
                emit Transfer(-lastMintedTimestamp[address(arg1)].field_112, this.address, arg1);
        else:
            if stor4 <= 0:
                require lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112 >= lastMintedTimestamp[address(arg1)].field_0
                require lastMintedTimestamp[address(arg1)].field_0 <= lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                require lastMintedTimestamp[address(arg1)].field_112 <= lastMintedTimestamp[address(arg1)].field_112
                require Mask(112, 0, lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112) == lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
                lastMintedTimestamp[address(arg1)].field_112 = 0
            else:
                if stor4:
                    require stor4
                    require stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor4 == lastMintedTimestamp[address(arg1)].field_112
                require stor1
                require (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 >= stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1
                require lastMintedTimestamp[address(arg1)].field_112 >= 0
                require lastMintedTimestamp[address(arg1)].field_0 <= (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                require lastMintedTimestamp[address(arg1)].field_112 <= (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_112
                require Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112) == (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112
                lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, (stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1) + lastMintedTimestamp[address(arg1)].field_0 + lastMintedTimestamp[address(arg1)].field_112)
                lastMintedTimestamp[address(arg1)].field_112 = 0
                if stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1 > 0:
                    emit Transfer((stor4 * lastMintedTimestamp[address(arg1)].field_112 / stor1), this.address, arg1);
    if lastMintedTimestamp[address(msg.sender)].field_0 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    lastMintedTimestamp[address(msg.sender)].field_0 = Mask(112, 0, lastMintedTimestamp[address(msg.sender)].field_0 - arg2)
    require arg2 + lastMintedTimestamp[address(arg1)].field_0 >= arg2
    require Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_0) == arg2 + lastMintedTimestamp[address(arg1)].field_0
    lastMintedTimestamp[address(arg1)].field_0 = Mask(112, 0, arg2 + lastMintedTimestamp[address(arg1)].field_0)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
