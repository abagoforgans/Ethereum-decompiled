contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor1 = 10^18
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[6114 len 20]
    stor3 = code.data[6134 len 32]
    stor4 = code.data[6166 len 32]
    return code.data[235 len 5867]
}



// =====================  Runtime code  =====================


address owner;
uint256 distributedTotal;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint8 stor6;
mapping of uint256 doneAirdropAmount;
array of struct airdropDoneList;

function airdropAdmins(address arg1) {
    return bool(stor6[arg1])
}

function isAdmin(address arg1) {
    return bool(stor6[address(arg1)])
}

function getDoneAirdropAmount(address arg1) {
    return doneAirdropAmount[address(arg1)]
}

function owner() {
    return owner
}

function getDistributedTotal() {
    return distributedTotal
}

function airdropDoneList(uint256 arg1) {
    require arg1 < airdropDoneList.length
    return address(airdropDoneList[arg1].field_0)
}

function airdropDoneAmountMap(address arg1) {
    return doneAirdropAmount[arg1]
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
    emit AddAdmin(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    if stor6[address(arg1)]:
        stor6[address(arg1)] = 0
        emit RemoveAdmin(arg1);
}

function updateAirdropEndTime(uint256 arg1) {
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    emit UpdateEndTime(msg.sender, stor4, arg1);
    stor4 = arg1
}

function balanceOfThis() {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function transferOutBalance() {
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(stor5)
    call stor5.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    require ext_call.success
    return 1
}

function getDoneAddresses() {
    if not airdropDoneList.length:
        mem[(32 * airdropDoneList.length) + 160] = 32
        mem[(32 * airdropDoneList.length) + 192] = airdropDoneList.length
        mem[(32 * airdropDoneList.length) + 224 len floor32(airdropDoneList.length)] = mem[160 len floor32(airdropDoneList.length)]
        return memory
          from (32 * airdropDoneList.length) + 160
           len (96 * airdropDoneList.length) + 64
    mem[160] = address(airdropDoneList.field_0)
    idx = 160
    s = 0
    while (32 * airdropDoneList.length) + 128 > idx:
        mem[idx + 32] = address(airdropDoneList[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * airdropDoneList.length) + 224 len floor32(airdropDoneList.length)] = mem[160 len floor32(airdropDoneList.length)]
    return Array(len=airdropDoneList.length, data=mem[160 len floor32(airdropDoneList.length)], mem[(32 * airdropDoneList.length) + floor32(airdropDoneList.length) + 224 len (32 * airdropDoneList.length) - floor32(airdropDoneList.length)]), 
}

function airdropTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor6[address(msg.sender)]
    require block.timestamp > stor3
    require block.timestamp < stor4
    require arg2 > 0
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    airdropDoneList.length++
    if not airdropDoneList.length <= airdropDoneList.length + 1:
        idx = airdropDoneList.length + 1
        while airdropDoneList.length > idx:
            airdropDoneList[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(airdropDoneList[airdropDoneList.length].field_0) = arg1
    if doneAirdropAmount[address(arg1)] <= 0:
        doneAirdropAmount[address(arg1)] = arg2
    else:
        require doneAirdropAmount[address(arg1)] + arg2 >= doneAirdropAmount[address(arg1)]
        doneAirdropAmount[address(arg1)] += arg2
    require distributedTotal + arg2 >= distributedTotal
    distributedTotal += arg2
    emit Airdrop(address(arg1), arg2);
}

function airdropTokensBatch(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == owner:
        require block.timestamp > stor3
        require block.timestamp < stor4
        require arg1.length > 0
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _142 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _146 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if owner != msg.sender:
                require stor6[address(msg.sender)]
            require block.timestamp > stor3
            require block.timestamp < stor4
            require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _146
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _146
            require ext_call.success
            require ext_call.return_data[0]
            airdropDoneList.length++
            if not airdropDoneList.length <= airdropDoneList.length + 1:
                s = sha3(8) + airdropDoneList.length + 1
                while sha3(8) + airdropDoneList.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(airdropDoneList[airdropDoneList.length].field_0) = address(_142)
            if doneAirdropAmount[address(_142)] <= 0:
                mem[0] = address(_142)
                mem[32] = 7
                doneAirdropAmount[address(_142)] = _146
            else:
                require doneAirdropAmount[address(_142)] + _146 >= doneAirdropAmount[address(_142)]
                mem[0] = address(_142)
                mem[32] = 7
                doneAirdropAmount[address(_142)] += _146
            require distributedTotal + _146 >= distributedTotal
            distributedTotal += _146
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = address(_142)
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _146
            emit Airdrop(address(_142), _146);
            idx = idx + 1
            continue 
    else:
        require stor6[address(msg.sender)]
        require block.timestamp > stor3
        require block.timestamp < stor4
        require arg1.length > 0
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _144 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _147 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if owner != msg.sender:
                require stor6[address(msg.sender)]
            require block.timestamp > stor3
            require block.timestamp < stor4
            require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _147
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _147
            require ext_call.success
            require ext_call.return_data[0]
            airdropDoneList.length++
            if not airdropDoneList.length <= airdropDoneList.length + 1:
                s = sha3(8) + airdropDoneList.length + 1
                while sha3(8) + airdropDoneList.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            address(airdropDoneList[airdropDoneList.length].field_0) = address(_144)
            if doneAirdropAmount[address(_144)] <= 0:
                mem[0] = address(_144)
                mem[32] = 7
                doneAirdropAmount[address(_144)] = _147
            else:
                require doneAirdropAmount[address(_144)] + _147 >= doneAirdropAmount[address(_144)]
                mem[0] = address(_144)
                mem[32] = 7
                doneAirdropAmount[address(_144)] += _147
            require distributedTotal + _147 >= distributedTotal
            distributedTotal += _147
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = address(_144)
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _147
            emit Airdrop(address(_144), _147);
            idx = idx + 1
            continue 
}



}
