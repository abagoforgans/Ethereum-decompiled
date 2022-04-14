contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = code.data[5594 len 1]
    stor1 = code.data[5607 len 20]
    stor2 = code.data[5627 len 32]
    stor3 = code.data[5659 len 32]
    return code.data[264 len 5299]
}



// =====================  Runtime code  =====================


#
#  - getVotersAt(uint256 arg1, uint256 arg2, uint256 arg3)
#  - getVoters(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 candidates; offset 160
address owner;
address mspAddress;
uint256 cap;
uint256 endBlock;
mapping of uint8 votes;
array of address voters;

function endBlock() {
    return endBlock
}

function cap() {
    return cap
}

function candidates() {
    return candidates
}

function owner() {
    return owner
}

function votersCount() {
    return voters.length
}

function msp() {
    return mspAddress
}

function votes(address arg1) {
    return votes[arg1]
}

function voters(uint256 arg1) {
    require arg1 < voters.length
    return address(voters[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function vote(uint8 arg1) {
    require arg1 > 0
    require arg1 <= candidates
    if endBlock:
        require block.number <= endBlock
    if not votes[address(msg.sender)]:
        voters.length++
        if not voters.length <= voters.length + 1:
            idx = voters.length + 1
            while voters.length > idx:
                uint256(voters[idx]) = 0
                idx = idx + 1
                continue 
        address(voters[voters.length]) = msg.sender
    votes[address(msg.sender)] = arg1
    emit Vote(msg.sender, arg1);
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function getSummary() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = candidates
    idx = 1
    while uint8(idx) <= candidates:
        require uint8(idx - 1) < candidates
        mem[(32 * uint8(idx - 1)) + 192] = uint8(idx)
        idx = idx + 1
        continue 
    if block.number > endBlock:
        if msize < (32 * candidates) + 192:
            mem[(32 * candidates) + 192] = candidates
            idx = 0
            s = 0
            while idx < voters.length:
                mem[32] = 4
                mem[0] = 5
                mem[(64 * candidates) + 228] = address(voters[idx])
                mem[(64 * candidates) + 260] = endBlock
                require ext_code.size(mspAddress)
                call mspAddress.balanceOfAt(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(voters[idx]), endBlock
                mem[(64 * candidates) + 224] = ext_call.return_data[0]
                require ext_call.success
                require uint8(votes[address(stor5[idx])] - 1) < mem[(32 * candidates) + 192]
                require uint8(votes[address(stor5[idx])] - 1) < mem[(32 * candidates) + 192]
                if ext_call.return_data[0] < cap:
                    mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] + ext_call.return_data[0]
                else:
                    mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] + cap
                idx = idx + 1
                s = votes[address(stor5[idx])] - 1
                continue 
            mem[(64 * candidates) + 224] = 64
            mem[(64 * candidates) + 288] = candidates
            mem[(64 * candidates) + 320 len floor32(candidates)] = mem[192 len floor32(candidates)]
            mem[(64 * candidates) + 256] = (32 * candidates) + 96
            mem[(98 * candidates) + 320] = mem[(32 * candidates) + 192]
            mem[(98 * candidates) + 352 len floor32(mem[(32 * candidates) + 192])] = mem[(32 * candidates) + 224 len floor32(mem[(32 * candidates) + 192])]
            return memory
              from (64 * candidates) + 224
               len (32 * mem[(32 * candidates) + 192]) + (32 * candidates) + 128
        _msize = max(0, 32 * uint8(None))
        mem[_msize + 224] = candidates
        mem[64] = (_msize + 224) + (32 * candidates) + 32
        idx = 0
        s = 0
        while idx < voters.length:
            mem[32] = 4
            mem[0] = 5
            mem[(_msize + 224) + (32 * candidates) + 36] = address(voters[idx])
            mem[(_msize + 224) + (32 * candidates) + 68] = endBlock
            require ext_code.size(mspAddress)
            call mspAddress.balanceOfAt(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(voters[idx]), endBlock
            mem[(_msize + 224) + (32 * candidates) + 32] = ext_call.return_data[0]
            require ext_call.success
            require uint8(votes[address(stor5[idx])] - 1) < mem[_msize + 224]
            require uint8(votes[address(stor5[idx])] - 1) < mem[_msize + 224]
            if ext_call.return_data[0] < cap:
                mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] + ext_call.return_data[0]
            else:
                mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] + cap
            idx = idx + 1
            s = votes[address(stor5[idx])] - 1
            continue 
    else:
        if msize < (32 * candidates) + 192:
            mem[(32 * candidates) + 192] = candidates
            idx = 0
            s = 0
            while idx < voters.length:
                mem[32] = 4
                mem[0] = 5
                mem[(64 * candidates) + 228] = address(voters[idx])
                mem[(64 * candidates) + 260] = block.number
                require ext_code.size(mspAddress)
                call mspAddress.balanceOfAt(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(voters[idx]), block.number
                mem[(64 * candidates) + 224] = ext_call.return_data[0]
                require ext_call.success
                require uint8(votes[address(stor5[idx])] - 1) < mem[(32 * candidates) + 192]
                require uint8(votes[address(stor5[idx])] - 1) < mem[(32 * candidates) + 192]
                if ext_call.return_data[0] < cap:
                    mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] + ext_call.return_data[0]
                else:
                    mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (32 * candidates) + 224] + cap
                idx = idx + 1
                s = votes[address(stor5[idx])] - 1
                continue 
            mem[(64 * candidates) + 224] = 64
            mem[(64 * candidates) + 288] = candidates
            mem[(64 * candidates) + 320 len floor32(candidates)] = mem[192 len floor32(candidates)]
            mem[(64 * candidates) + 256] = (32 * candidates) + 96
            mem[(98 * candidates) + 320] = mem[(32 * candidates) + 192]
            mem[(98 * candidates) + 352 len floor32(mem[(32 * candidates) + 192])] = mem[(32 * candidates) + 224 len floor32(mem[(32 * candidates) + 192])]
            return memory
              from (64 * candidates) + 224
               len (32 * mem[(32 * candidates) + 192]) + (32 * candidates) + 128
        _msize = max(0, 32 * uint8(None))
        mem[_msize + 224] = candidates
        mem[64] = (_msize + 224) + (32 * candidates) + 32
        idx = 0
        s = 0
        while idx < voters.length:
            mem[32] = 4
            mem[0] = 5
            mem[(_msize + 224) + (32 * candidates) + 36] = address(voters[idx])
            mem[(_msize + 224) + (32 * candidates) + 68] = block.number
            require ext_code.size(mspAddress)
            call mspAddress.balanceOfAt(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(voters[idx]), block.number
            mem[(_msize + 224) + (32 * candidates) + 32] = ext_call.return_data[0]
            require ext_call.success
            require uint8(votes[address(stor5[idx])] - 1) < mem[_msize + 224]
            require uint8(votes[address(stor5[idx])] - 1) < mem[_msize + 224]
            if ext_call.return_data[0] < cap:
                mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] + ext_call.return_data[0]
            else:
                mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] = mem[(32 * uint8(votes[address(stor5[idx])] - 1)) + (_msize + 224) + 32] + cap
            idx = idx + 1
            s = votes[address(stor5[idx])] - 1
            continue 
    mem[(_msize + 224) + (32 * candidates) + 32] = 64
    mem[(_msize + 224) + (32 * candidates) + 96] = candidates
    mem[(_msize + 224) + (32 * candidates) + 128 len floor32(candidates)] = mem[192 len floor32(candidates)]
    mem[(_msize + 224) + (32 * candidates) + 64] = (32 * candidates) + 96
    mem[(64 * candidates) + (_msize + 224) + 128] = mem[_msize + 224]
    mem[(64 * candidates) + (_msize + 224) + 160 len floor32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len floor32(mem[_msize + 224])]
    return Array(len=stor0, data=mem[192 len floor32(candidates)], mem[(_msize + 224) + (32 * candidates) + floor32(candidates) + 128 len (32 * candidates) + (32 * mem[_msize + 224]) + -floor32(candidates) + 32]), 
           (32 * candidates) + 96
}



}
