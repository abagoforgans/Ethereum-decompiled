contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[6789 len 2229]
    require create.new_address
    stor1 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[9018 len 506], address(create.new_address)
    stor2 = address(create.new_address)
    stor7 = 1000
    stor8 = 0
    stor9 = block.number
    stor10 = block.number + (48 * 24 * 3600)
    stor6 = 0
    return code.data[299 len 6490]
}



// =====================  Runtime code  =====================


const getBlockNumber = block.number


uint8 stor0; offset 160
address owner;
address voteAddress;
address faucetAddress;
array of struct logos;
mapping of uint256 stor4;
mapping of uint8 stor5;
uint256 stor6;
uint256 votePerETH;
uint256 stor8; offset 1
uint256 totalReward;
uint256 startBlock;
uint256 endBlock;
address winnerAddress;

function endBlock() {
    return endBlock
}

function logos(uint256 arg1) {
    require arg1 < logos.length
    return logos[arg1].field_0
}

function startBlock() {
    return startBlock
}

function votePerETH() {
    return votePerETH
}

function vote() {
    return voteAddress
}

function totalReward() {
    return totalReward
}

function stopped() {
    return bool(stor0)
}

function owner() {
    return owner
}

function faucet() {
    return faucetAddress
}

function winner() {
    return winnerAddress
}

function isAfterEnd() {
    return (block.number > endBlock)
}

function isRespectTimeFrame() {
    return (block.number < endBlock)
}

function emergencyStop() {
    if owner == msg.sender:
        stor0 = 1
}

function release() {
    if owner == msg.sender:
        require stor0
        stor0 = 0
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function isLogo(address arg1) {
    idx = 0
    while uint8(idx) < logos.length:
        mem[0] = 3
        if logos[uint8(idx)].field_0 != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function getFunds() {
    require stor0
    require stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sendToFaucet(uint256 arg1) {
    if owner == msg.sender:
        require ext_code.size(voteAddress)
        call voteAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args faucetAddress, arg1
        require ext_call.success
        require ext_call.return_data[0]
}

function getLogos() {
    if logos.length:
        mem[160] = address(logos.field_0)
        idx = 160
        s = 0
        while (32 * logos.length) + 128 > idx:
            mem[idx + 32] = logos[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * logos.length) + 160] = 32
    mem[(32 * logos.length) + 192] = logos.length
    if Mask(251, 0, logos.length):
        mem[(32 * logos.length) + 224] = mem[160]
        mem[(32 * logos.length) + 256 len floor32((32 * logos.length) - 1)] = mem[192 len floor32((32 * logos.length) - 1)]
    return Array(len=logos.length, data=mem[(32 * logos.length) + 224 len 32 * logos.length])
}

function cleanBalance() {
    if owner == msg.sender:
        require block.number > endBlock
        require stor6 < logos.length
        require block.number >= endBlock + (12 * 3600)
        require ext_code.size(voteAddress)
        call voteAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(voteAddress)
        call voteAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require block.number <= endBlock
    require not stor0
    require block.number < endBlock
    if not votePerETH:
        require ext_code.size(voteAddress)
        call voteAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value <= -1 / votePerETH
        require ext_code.size(voteAddress)
        call voteAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, votePerETH * msg.value / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require stor4[address(msg.sender)] <= -msg.value - 1
    stor4[address(msg.sender)] += msg.value
    require totalReward <= -msg.value - 1
    totalReward += msg.value
    emit ReceiveDonate(msg.sender, msg.value);
}

function claimReward(address arg1) {
    require not stor0
    require block.number > endBlock
    require 0 < logos.length
    idx = 0
    while logos[uint8(idx)].field_0 != msg.sender:
        require uint8(idx + 1) < logos.length
        mem[0] = 3
        idx = idx + 1
        continue 
    require not stor5[address(msg.sender)]
    require stor6 != logos.length
    require logos.length
    require 2 <= -1 / logos.length
    require 2 * logos.length
    if winnerAddress != msg.sender:
        stor5[address(msg.sender)] = 1
        require stor6 <= -2
        stor6++
        call arg1 with:
           value totalReward / 2 * logos.length wei
             gas 2300 * is_zero(value) wei
    else:
        require totalReward / 2 * logos.length <= -stor8 - 1
        stor5[address(msg.sender)] = 1
        require stor6 <= -2
        stor6++
        call arg1 with:
           value stor8 + (totalReward / 2 * logos.length) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function claimWinner() {
    if owner == msg.sender:
        require block.number > endBlock
        idx = 0
        while uint8(idx) < logos.length:
            mem[0] = 3
            require logos[uint8(idx)].field_0 != winnerAddress
            idx = idx + 1
            continue 
        require 0 < logos.length
        winnerAddress = address(logos.field_0)
        idx = 1
        while uint8(idx) < logos.length:
            require ext_code.size(voteAddress)
            call voteAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args winnerAddress
            require ext_call.success
            require uint8(idx) < logos.length
            mem[0] = 3
            mem[128] = 0
            mem[100] = logos[uint8(idx)].field_0
            require ext_code.size(voteAddress)
            call voteAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args logos[uint8(idx)].field_0
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] > ext_call.return_data[0]:
                require uint8(idx) < logos.length
                mem[0] = 3
                winnerAddress = logos[uint8(idx)].field_0
            idx = idx + 1
            continue 
}

function registLogo(address arg1, address arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if owner != msg.sender:
        return 0
    require block.number < endBlock
    mem[ceil32(arg3.length) + 128 len 1728] = code.data[4719 len 1728]
    mem[ceil32(arg3.length) + 1856] = arg1
    mem[ceil32(arg3.length) + 1888] = arg2
    mem[ceil32(arg3.length) + 1920] = 96
    mem[ceil32(arg3.length) + 1952] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[4719 len 1728], address(arg1), address(arg2), 96, arg3.length, mem[ceil32(arg3.length) + 1984 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 1984] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2016 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[4719 len 1728], address(arg1), address(arg2), 96, arg3.length, mem[ceil32(arg3.length) + 1984 len floor32(arg3.length) + 32]
    else:
        mem[ceil32(arg3.length) + 1984] = mem[128]
        mem[ceil32(arg3.length) + 2016 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[4719 len 1728], address(arg1), address(arg2), 96, arg3.length, mem[ceil32(arg3.length) + 1984 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 1984] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2016 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[4719 len 1728], address(arg1), address(arg2), 96, arg3.length, mem[128], mem[ceil32(arg3.length) + 2016 len floor32(arg3.length)]
    require create.new_address
    logos.length++
    if not logos.length <= logos.length + 1:
        idx = logos.length + 1
        while logos.length > idx:
            logos[idx].field_0 = 0
            idx = idx + 1
            continue 
    logos[logos.length].field_0 = address(create.new_address)
    return address(create.new_address)
}



}
