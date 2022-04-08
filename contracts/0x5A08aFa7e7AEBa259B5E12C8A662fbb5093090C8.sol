contract main {


// =======================  Init code  ======================


uint256 stor0;
uint64 stor1;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() {
    stor4 = msg.sender
    stor0 = code.data[11642 len 32]
    uint256(stor1) = code.data[11642 len 32] + (672 * 24 * 3600)
    stor2 = code.data[11590 len 20]
    stor3 = code.data[11622 len 20]
    create contract with 0 wei
                    code: code.data[5758 len 5820], 1000000000 * 10^18
    require create.new_address
    stor5 = address(create.new_address)
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor3, 100000000 * 10^18
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args 0xfd6259c709be5ea1a2a6ec9e89febfad4c095778, 20000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args 0xc09544da6f50441c024ec150ecedc72de558ce94, 20000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args 0xa900191b0542e27a0022a05c45c152dfa98db026, 20000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args 0x5b481e52e1ca0a21c147016c4df729764615afb, 20000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args 0xc6bfce8cead4ecc595ba227b9527afa914dd8183, 20000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor3, 10000000 * 10^18
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
         gas gas_remaining - 50 wei
        args stor3, 290000000 * 10^18, uint64(stor1), uint256(stor1) + (4368 * 24 * 3600) << 192, uint256(stor1) + (8736 * 24 * 3600) << 192, 1, 0
    require ext_call.success
    return code.data[2018 len 3740]
}



// =====================  Runtime code  =====================


const decimals = 18

const sub_8d17590b(?) = 290000000 * 10^18

const PRICE_STAGE_TWO = 11500 * 10^18

const MAX_SUPPLY = 1000000000 * 10^18

const STAGE_FOUR_TIME_END = (672 * 24 * 3600)

const ALLOC_LIQUID_TEAM = 100000000 * 10^18

const ALLOC_BOUNTIES = 10000000 * 10^18

const ALLOC_ILLIQUID_TEAM = 100000000 * 10^18

const STAGE_TWO_TIME_END = (168 * 24 * 3600)

const STAGE_ONE_TIME_END = (72 * 24 * 3600)

const ALLOC_CROWDSALE = 500000000 * 10^18

const PRICE_STAGE_ONE = 12500 * 10^18

const PRICE_STAGE_FOUR = 9500 * 10^18

const PRICE_STAGE_THREE = 10500 * 10^18

const CAP = 40000 * 10^18

const STAGE_THREE_TIME_END = (336 * 24 * 3600)


uint256 publicStartTime;
uint256 publicEndTime;
address multisigAddress;
address sub_0ec429d2Address;
address ownerAddress;
address cdtTokenAddress;
uint256 ethReceived;
uint256 sub_d43e9544;
uint8 stor8;

function sub_0ec429d2(?) {
    return sub_0ec429d2Address
}

function publicEndTime() {
    return publicEndTime
}

function multisigAddress() {
    return multisigAddress
}

function publicStartTime() {
    return publicStartTime
}

function ownerAddress() {
    return ownerAddress
}

function halted() {
    return bool(stor8)
}

function cdtToken() {
    return cdtTokenAddress
}

function sub_d43e9544(?) {
    return sub_d43e9544
}

function ethReceived() {
    return ethReceived
}

function toggleHalt(bool arg1) {
    require ownerAddress == msg.sender
    stor8 = uint8(arg1)
}

function drain() {
    require ownerAddress == msg.sender
    call ownerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_33e16ddb(?) {
    require ownerAddress == msg.sender
    require block.timestamp >= publicEndTime
    require ext_code.size(cdtTokenAddress)
    call cdtTokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), -sub_d43e9544 + 500000000 * 10^18
    require ext_call.success
}

function getPriceRate() {
    if block.timestamp <= publicStartTime + (72 * 24 * 3600):
        return 12500 * 10^18
    if block.timestamp <= publicStartTime + (168 * 24 * 3600):
        return 11500 * 10^18
    if block.timestamp <= publicStartTime + (336 * 24 * 3600):
        return 10500 * 10^18
    if block.timestamp > publicStartTime + (672 * 24 * 3600):
        return 0
    return 9500 * 10^18
}

function _fallback() payable {
    require block.timestamp >= publicStartTime
    require block.timestamp < publicEndTime
    require not stor8
    if block.timestamp <= publicStartTime + (72 * 24 * 3600):
        if msg.value:
            require 12500 * 10^18 * msg.value / msg.value == 12500 * 10^18
        require msg.value + ethReceived >= ethReceived
        require msg.value + ethReceived <= 40000 * 10^18
        require (12500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
        require (12500 * 10^18 * msg.value / 10^18) + sub_d43e9544 < 500000000 * 10^18
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(cdtTokenAddress)
        call cdtTokenAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, 12500 * 10^18 * msg.value / 10^18
        require ext_call.success
        require msg.value + ethReceived >= ethReceived
        ethReceived += msg.value
        require (12500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
        sub_d43e9544 += 12500 * 10^18 * msg.value / 10^18
        emit Buy((12500 * 10^18 * msg.value / 10^18), msg.sender);
    else:
        if block.timestamp <= publicStartTime + (168 * 24 * 3600):
            if msg.value:
                require 11500 * 10^18 * msg.value / msg.value == 11500 * 10^18
            require msg.value + ethReceived >= ethReceived
            require msg.value + ethReceived <= 40000 * 10^18
            require (11500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
            require (11500 * 10^18 * msg.value / 10^18) + sub_d43e9544 < 500000000 * 10^18
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(cdtTokenAddress)
            call cdtTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, 11500 * 10^18 * msg.value / 10^18
            require ext_call.success
            require msg.value + ethReceived >= ethReceived
            ethReceived += msg.value
            require (11500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
            sub_d43e9544 += 11500 * 10^18 * msg.value / 10^18
            emit Buy((11500 * 10^18 * msg.value / 10^18), msg.sender);
        else:
            if block.timestamp <= publicStartTime + (336 * 24 * 3600):
                if msg.value:
                    require 10500 * 10^18 * msg.value / msg.value == 10500 * 10^18
                require msg.value + ethReceived >= ethReceived
                require msg.value + ethReceived <= 40000 * 10^18
                require (10500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
                require (10500 * 10^18 * msg.value / 10^18) + sub_d43e9544 < 500000000 * 10^18
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(cdtTokenAddress)
                call cdtTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args msg.sender, 10500 * 10^18 * msg.value / 10^18
                require ext_call.success
                require msg.value + ethReceived >= ethReceived
                ethReceived += msg.value
                require (10500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
                sub_d43e9544 += 10500 * 10^18 * msg.value / 10^18
                emit Buy((10500 * 10^18 * msg.value / 10^18), msg.sender);
            else:
                if block.timestamp > publicStartTime + (672 * 24 * 3600):
                    if msg.value:
                        require not 0 / msg.value
                    require msg.value + ethReceived >= ethReceived
                    require msg.value + ethReceived <= 40000 * 10^18
                    require sub_d43e9544 >= sub_d43e9544
                    require sub_d43e9544 < 500000000 * 10^18
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(cdtTokenAddress)
                    call cdtTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 0
                    require ext_call.success
                    require msg.value + ethReceived >= ethReceived
                    ethReceived += msg.value
                    require sub_d43e9544 >= sub_d43e9544
                    emit Buy(0, msg.sender);
                else:
                    if msg.value:
                        require 9500 * 10^18 * msg.value / msg.value == 9500 * 10^18
                    require msg.value + ethReceived >= ethReceived
                    require msg.value + ethReceived <= 40000 * 10^18
                    require (9500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
                    require (9500 * 10^18 * msg.value / 10^18) + sub_d43e9544 < 500000000 * 10^18
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(cdtTokenAddress)
                    call cdtTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, 9500 * 10^18 * msg.value / 10^18
                    require ext_call.success
                    require msg.value + ethReceived >= ethReceived
                    ethReceived += msg.value
                    require (9500 * 10^18 * msg.value / 10^18) + sub_d43e9544 >= sub_d43e9544
                    sub_d43e9544 += 9500 * 10^18 * msg.value / 10^18
                    emit Buy((9500 * 10^18 * msg.value / 10^18), msg.sender);
}



}
