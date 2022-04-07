contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor5;
address stor6;
array of uint256 stor7;
uint32 stor9; offset 160

function _fallback() {
    mem[96 len -2228] = code.data[2910 len -2228]
    mem[64] = -2132
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].add(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1 = mem[160]
    stor2 = mem[192]
    stor5 = mem[236 len 20]
    stor6 = mem[268 len 20]
    stor7[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    mem[0] = 7
    idx = -2132
    s = 0
    while stor7.length - 2132 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    stor9 = Mask(32, 224, sha3(mem[mem[64] len stor7.length + -mem[64] - 2132])) >> 224
    return code.data[682 len 2228]
}



// =====================  Runtime code  =====================


array of uint256 name;
uint256 fundingLimit;
uint256 rewardPercentage;
uint256 amountRaised;
uint256 tokensCreated;
address tokenContractAddress;
address tokenCreateContractAddress;
array of uint256 tokenCreateFunction;
mapping of struct stor8;
uint32 stor9; offset 160
address tokenCreatorAddress;

function name() {
    return name[0 len name.length]
}

function tokenCreateFunction() {
    return tokenCreateFunction[0 len tokenCreateFunction.length]
}

function tokensCreated() {
    return tokensCreated
}

function rewardPercentage() {
    return rewardPercentage
}

function tokenContract() {
    return tokenContractAddress
}

function amountRaised() {
    return amountRaised
}

function fundingLimit() {
    return fundingLimit
}

function tokenCreateContract() {
    return tokenCreateContractAddress
}

function tokenCreator() {
    return tokenCreatorAddress
}

function Fund() payable {
    require tokensCreated <= 0
    amountRaised += msg.value
    require msg.value + amountRaised <= fundingLimit
    stor8[address(msg.sender)].field_0 += msg.value
}

function _fallback() payable {
    require tokensCreated <= 0
    amountRaised += msg.value
    require msg.value + amountRaised <= fundingLimit
    stor8[address(msg.sender)].field_0 += msg.value
}

function ClaimReward() {
    if tokenCreatorAddress == msg.sender:
        call msg.sender with:
           value amountRaised - ((100 * amountRaised) - (rewardPercentage * amountRaised) / 100) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            tokenCreatorAddress = 0
}

function ClaimTokens() {
    if tokensCreated != 0:
        if stor8[address(msg.sender)].field_0:
            require amountRaised
            stor8[address(msg.sender)].field_0 = 0
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, tokensCreated * stor8[address(msg.sender)].field_0 / amountRaised
            require ext_call.success
}

function CreateTokens() {
    if tokensCreated <= 0:
        call tokenCreateContractAddress with:
           funct stor9
           value (100 * amountRaised) - (rewardPercentage * amountRaised) / 100 wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        tokensCreated = ext_call.return_data[0]
        tokenCreatorAddress = msg.sender
}

function Withdraw() {
    if tokensCreated <= 0:
        if stor8[address(msg.sender)].field_0:
            stor8[address(msg.sender)].field_0 = 0
            amountRaised -= stor8[address(msg.sender)].field_0
            call msg.sender with:
               value stor8[address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                stor8[address(msg.sender)].field_0 = 0
                stor8[address(msg.sender)].field_1 = stor8[address(msg.sender)].field_0
                amountRaised += stor8[address(msg.sender)].field_0
}



}
