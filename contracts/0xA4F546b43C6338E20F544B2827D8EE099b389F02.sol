contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8
array of struct stor6;

function _fallback() payable {
    uint8(stor2.field_0) = 1
    require not msg.value
    require code.data[6433 len 32] > block.number
    require code.data[6465 len 32] > code.data[6433 len 32]
    stor6.length++
    if not stor6.length > stor6.length + 1:
        stor6[stor6.length].field_0 = 0xa1cfc9ebdffbffe9b27d741ae04cfc2e78af527a
        stor6[stor6.length].field_256 = 0
        stor6[stor6.length].field_512 = 1000
        stor6[stor6.length].field_768 = 250 * 10^18
        stor6.length++
        stor6[stor6.length].field_0 = 0x37ef1168252f274d4ca5b558213d7294085bca08
        stor6[stor6.length].field_256 = 0
        stor6[stor6.length].field_512 = 500
        stor6[stor6.length].field_768 = 10^17
        stor6.length++
    else:
        idx = 4 * stor6.length + 1
        while 4 * stor6.length > idx:
            stor6[idx].field_0 = 0
            stor6[idx].field_256 = 0
            stor6[idx].field_512 = 0
            stor6[idx].field_768 = 0
            idx = idx + 4
            continue 
        stor6[stor6.length].field_0 = 0xa1cfc9ebdffbffe9b27d741ae04cfc2e78af527a
        stor6[stor6.length].field_256 = 0
        stor6[stor6.length].field_512 = 1000
        stor6[stor6.length].field_768 = 250 * 10^18
        stor6.length++
        if not stor6.length > stor6.length + 1:
            stor6[stor6.length].field_0 = 0x37ef1168252f274d4ca5b558213d7294085bca08
            stor6[stor6.length].field_256 = 0
            stor6[stor6.length].field_512 = 500
            stor6[stor6.length].field_768 = 10^17
            stor6.length++
        else:
            idx = 4 * stor6.length + 1
            while 4 * stor6.length > idx:
                stor6[idx].field_0 = 0
                stor6[idx].field_256 = 0
                stor6[idx].field_512 = 0
                stor6[idx].field_768 = 0
                idx = idx + 4
                continue 
            stor6[stor6.length].field_0 = 0x37ef1168252f274d4ca5b558213d7294085bca08
            stor6[stor6.length].field_256 = 0
            stor6[stor6.length].field_512 = 500
            stor6[stor6.length].field_768 = 10^17
            stor6.length++
            if not stor6.length <= stor6.length + 1:
                idx = 4 * stor6.length + 1
                while 4 * stor6.length > idx:
                    stor6[idx].field_0 = 0
                    stor6[idx].field_256 = 0
                    stor6[idx].field_512 = 0
                    stor6[idx].field_768 = 0
                    idx = idx + 4
                    continue 
    stor6[stor6.length].field_0 = 0x246604643ac38e96526b66ba91c1b2ec0c39d8de
    stor6[stor6.length].field_256 = 0
    stor6[stor6.length].field_512 = 500
    stor6[stor6.length].field_768 = 10^17
    address(stor2.field_8) = 0x286e0060d9dbea0231389485d455a80f14648b3c
    stor0 = code.data[6433 len 32]
    stor1 = code.data[6465 len 32]
    return code.data[1136 len 5297]
}



// =====================  Runtime code  =====================


const name = 'Bitplus Token'

const decimals = 18

const tokenCreationCap = 25000000 * 10^18

const symbol = 'BPNT'

const tokenCreationMin = 2500000 * 10^18

const tokenCreationRate = 1000


uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint8 stor2;
address bitplusAddress; offset 8
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor5;
array of struct earlyBackers;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fundingEndBlock() {
    return fundingEndBlock
}

function bitplusAddress() {
    return bitplusAddress
}

function funding() {
    return bool(stor2)
}

function fundingStartBlock() {
    return fundingStartBlock
}

function earlyBackers(uint256 arg1) {
    require arg1 < earlyBackers.length
    return earlyBackers[arg1].field_0, earlyBackers[arg1].field_256, earlyBackers[arg1].field_512, earlyBackers[arg1].field_768
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    stor5[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function safeguard() {
    if block.number > fundingEndBlock + 71000:
        call bitplusAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
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
    require not stor2
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor5[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    stor5[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}

function create() payable {
    require stor2
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    idx = 0
    s = 0
    while idx < earlyBackers.length:
        mem[0] = 6
        if earlyBackers[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require idx < earlyBackers.length
        mem[0] = 6
        earlyBackers[idx].field_256 += msg.value
        mem[96] = msg.value
        emit EarlyBackerDeposit(msg.value, msg.sender);
        idx = idx + 1
        s = 1
        continue 
    if not s:
        require msg.value <= -totalSupply + 25000000 * 10^18 / 1000
        totalSupply += 1000 * msg.value
        balanceOf[address(msg.sender)] += 1000 * msg.value
        emit Transfer((1000 * msg.value), 0, msg.sender);
}

function refund() {
    require stor2
    require block.number > fundingEndBlock
    require totalSupply < 2500000 * 10^18
    idx = 0
    s = 0
    t = 0
    while idx < earlyBackers.length:
        mem[0] = 6
        if earlyBackers[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < earlyBackers.length
        mem[0] = 6
        require earlyBackers[idx].field_256
        idx = idx + 1
        s = earlyBackers[idx].field_256
        t = 1
        continue 
    if t:
        emit Refund(s, msg.sender);
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
    else:
        require balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        totalSupply -= balanceOf[address(msg.sender)]
        emit Refund((balanceOf[address(msg.sender)] / 1000), msg.sender);
        call msg.sender with:
           value balanceOf[address(msg.sender)] / 1000 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require stor2
    if block.number <= fundingEndBlock:
        require totalSupply >= 25000000 * 10^18
    else:
        if totalSupply < 2500000 * 10^18:
            require totalSupply >= 25000000 * 10^18
    stor2 = 0
    call bitplusAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < earlyBackers.length:
        mem[0] = 6
        if not earlyBackers[idx].field_256:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        require idx < earlyBackers.length
        require earlyBackers[idx].field_768
        require -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000
        require idx < earlyBackers.length
        mem[0] = earlyBackers[idx].field_0
        mem[32] = 4
        balanceOf[stor6[idx].field_0] = totalSupply * earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768 / -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000
        totalSupply += totalSupply * earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768 / -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000
        mem[96] = totalSupply * earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768 / -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000
        emit Transfer((totalSupply * earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768 / -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000), 0, earlyBackers[idx].field_0);
        s = earlyBackers[idx].field_0
        t = totalSupply * earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768 / -(earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768) + 10000
        u = earlyBackers[idx].field_256 * earlyBackers[idx].field_512 / earlyBackers[idx].field_768
        idx = idx + 1
        continue 
}



}
