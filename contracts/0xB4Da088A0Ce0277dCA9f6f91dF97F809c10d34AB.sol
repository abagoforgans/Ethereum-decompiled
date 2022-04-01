contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    stor7 = 0x30b3c64d43e7a1e8965d934fa96a3bfb33eee0d2
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[5731 len 20]
    require code.data[5751 len 32] > block.number
    require code.data[5783 len 32] > code.data[5751 len 32]
    uint8(stor0.field_160) = 0
    stor1 = code.data[5731 len 20]
    create contract with 0 wei
                    code: code.data[3265 len 2454]
    require create.new_address
    stor2 = address(create.new_address)
    stor5 = code.data[5751 len 32]
    stor6 = code.data[5783 len 32]
    return code.data[311 len 2954]
}



// =====================  Runtime code  =====================


const TIER1_RATE = 160

const TOKEN_MULTIPLIER = 10^18

const TIER3_RATE = 80

const DUST_LIMIT = 10^15

const TIER3_CAP = 133750 * 10^18

const PRESALE_TOKEN_ALLOCATION = 5000000 * 10^18

const TIER1_CAP = 31250 * 10^18

const TIER2_CAP = 71250 * 10^18

const TIER2_RATE = 125


uint8 stor0; offset 160
address owner;
address walletAddress;
address moedaTokenAddress;
uint256 etherReceived;
uint256 totalTokensSold;
uint256 startBlock;
uint256 endBlock;
address PRESALE_WALLETAddress;

function endBlock() {
    return endBlock
}

function etherReceived() {
    return etherReceived
}

function PRESALE_WALLET() {
    return PRESALE_WALLETAddress
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function totalTokensSold() {
    return totalTokensSold
}

function owner() {
    return owner
}

function moedaToken() {
    return moedaTokenAddress
}

function crowdsaleClosed() {
    return bool(stor0)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getLimitAndPrice(uint256 arg1) {
    if arg1 < 31250 * 10^18:
        return 31250 * 10^18, 160
    if arg1 < 71250 * 10^18:
        return 71250 * 10^18, 125
    require arg1 < 133750 * 10^18
    return 133750 * 10^18, 80
}

function drainToken(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    emit TokenDrain(address(arg1), address(arg2), ext_call.return_data[0]);
}

function finalize() {
    require owner == msg.sender
    require block.number >= startBlock
    require not stor0
    require etherReceived <= 133750 * 10^18
    if block.number < endBlock:
        require -etherReceived + 133750 * 10^18 < 10^15
    require ext_code.size(moedaTokenAddress)
    call moedaTokenAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args PRESALE_WALLETAddress, 5000000 * 10^18
    require ext_call.success
    require ext_code.size(moedaTokenAddress)
    call moedaTokenAddress.unlock() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor0 = 1
}

function getTokenAmount(uint256 arg1, uint256 arg2) {
    if not arg2:
        return 0
    if arg1 >= 31250 * 10^18:
        if arg1 >= 71250 * 10^18:
            require arg1 < 133750 * 10^18
            require arg1 <= 133750 * 10^18
            if -arg1 + 133750 * 10^18 < arg2:
                if -arg1 + 133750 * 10^18:
                    require -arg1 + 133750 * 10^18
                    require (-80 * arg1) + 10700000 * 10^18 / -arg1 + 133750 * 10^18 == 80
                require 133750 * 10^18 >= arg1
                require 133750 * 10^18 >= -arg1 + 133750 * 10^18
                require -arg1 + 133750 * 10^18 <= arg2
                require not arg2 + arg1 - 133750 * 10^18
                require (-80 * arg1) + 10700000 * 10^18 >= 0
                return ((-80 * arg1) + 10700000 * 10^18)
            if arg2:
                require arg2
                require 80 * arg2 / arg2 == 80
            require arg2 + arg1 >= arg1
            require arg2 + arg1 >= arg2
            require arg2 <= arg2
            require 80 * arg2 >= 80 * arg2
            require 80 * arg2 >= 0
            return (80 * arg2)
        require arg1 <= 71250 * 10^18
        if -arg1 + 71250 * 10^18 >= arg2:
            if arg2:
                require arg2
                require 125 * arg2 / arg2 == 125
            require arg2 + arg1 >= arg1
            require arg2 + arg1 >= arg2
            require arg2 <= arg2
            require 125 * arg2 >= 125 * arg2
            require 125 * arg2 >= 0
            return (125 * arg2)
        if -arg1 + 71250 * 10^18:
            require -arg1 + 71250 * 10^18
            require (-125 * arg1) + 8906250 * 10^18 / -arg1 + 71250 * 10^18 == 125
        require 71250 * 10^18 >= arg1
        require 71250 * 10^18 >= -arg1 + 71250 * 10^18
        require -arg1 + 71250 * 10^18 <= arg2
        if not arg2 + arg1 - 71250 * 10^18:
            require (-125 * arg1) + 8906250 * 10^18 >= 0
            return ((-125 * arg1) + 8906250 * 10^18)
        if 62500 * 10^18 < arg2 + arg1 - 71250 * 10^18:
            require 62500 * 10^18 <= arg2 + arg1 - 71250 * 10^18
            require not arg2 + arg1 - 133750 * 10^18
            require (-125 * arg1) + 13906250 * 10^18 >= 5000000 * 10^18
            return ((-125 * arg1) + 13906250 * 10^18)
        if arg2 + arg1 - 71250 * 10^18:
            require arg2 + arg1 - 71250 * 10^18
            require (80 * arg2) + (80 * arg1) - 5700000 * 10^18 / arg2 + arg1 - 71250 * 10^18 == 80
        require arg2 + arg1 >= 71250 * 10^18
        require (80 * arg2) + (80 * arg1) - 5700000 * 10^18 >= 0
        require (80 * arg2) + (-45 * arg1) + (890625 * 10^15 * 24 * 3600) >= (-125 * arg1) + 8906250 * 10^18
        require (-45 * arg1) + (890625 * 10^15 * 24 * 3600) >= (80 * arg1) - 5700000 * 10^18
        return ((80 * arg2) + (-45 * arg1) + (890625 * 10^15 * 24 * 3600))
    require arg1 <= 31250 * 10^18
    if -arg1 + 31250 * 10^18 >= arg2:
        if arg2:
            require arg2
            require 160 * arg2 / arg2 == 160
        require arg2 + arg1 >= arg1
        require arg2 + arg1 >= arg2
        require arg2 <= arg2
        require 160 * arg2 >= 160 * arg2
        require 160 * arg2 >= 0
        return (160 * arg2)
    if -arg1 + 31250 * 10^18:
        require -arg1 + 31250 * 10^18
        require (-160 * arg1) + 5000000 * 10^18 / -arg1 + 31250 * 10^18 == 160
    require 31250 * 10^18 >= arg1
    require 31250 * 10^18 >= -arg1 + 31250 * 10^18
    require -arg1 + 31250 * 10^18 <= arg2
    if not arg2 + arg1 - 31250 * 10^18:
        require (-160 * arg1) + 5000000 * 10^18 >= 0
        return ((-160 * arg1) + 5000000 * 10^18)
    if 40000 * 10^18 >= arg2 + arg1 - 31250 * 10^18:
        if arg2 + arg1 - 31250 * 10^18:
            require arg2 + arg1 - 31250 * 10^18
            require (125 * arg2) + (125 * arg1) - 3906250 * 10^18 / arg2 + arg1 - 31250 * 10^18 == 125
        require arg2 + arg1 >= 31250 * 10^18
        require (125 * arg2) + (125 * arg1) - 3906250 * 10^18 >= 0
        require (125 * arg2) + (-35 * arg1) + 1093750 * 10^18 >= (-160 * arg1) + 5000000 * 10^18
        require (-35 * arg1) + 1093750 * 10^18 >= (125 * arg1) - 3906250 * 10^18
        return ((125 * arg2) + (-35 * arg1) + 1093750 * 10^18)
    require 40000 * 10^18 <= arg2 + arg1 - 31250 * 10^18
    if not arg2 + arg1 - 71250 * 10^18:
        require (-160 * arg1) + 10000000 * 10^18 >= 5000000 * 10^18
        return ((-160 * arg1) + 10000000 * 10^18)
    if 62500 * 10^18 < arg2 + arg1 - 71250 * 10^18:
        require 62500 * 10^18 <= arg2 + arg1 - 71250 * 10^18
        require not arg2 + arg1 - 133750 * 10^18
        require (-160 * arg1) + 15000000 * 10^18 >= 10000000 * 10^18
        return ((-160 * arg1) + 15000000 * 10^18)
    if arg2 + arg1 - 71250 * 10^18:
        require arg2 + arg1 - 71250 * 10^18
        require (80 * arg2) + (80 * arg1) - 5700000 * 10^18 / arg2 + arg1 - 71250 * 10^18 == 80
    require arg2 + arg1 >= 71250 * 10^18
    require (80 * arg2) + (80 * arg1) - 5700000 * 10^18 >= 0
    require (80 * arg2) + (80 * arg1) - 700000 * 10^18 >= 5000000 * 10^18
    require (80 * arg2) + (-80 * arg1) + 4300000 * 10^18 >= (-160 * arg1) + 5000000 * 10^18
    require (-80 * arg1) + 4300000 * 10^18 >= (80 * arg1) - 700000 * 10^18
    return ((80 * arg2) + (-80 * arg1) + 4300000 * 10^18)
}

function _fallback() payable {
    require not stor0
    require block.number >= startBlock
    require block.number < endBlock
    require msg.value >= 10^15
    require msg.value + etherReceived >= etherReceived
    require msg.value + etherReceived >= msg.value
    require msg.value + etherReceived <= 133750 * 10^18
    if not msg.value:
        require ext_code.size(moedaTokenAddress)
        call moedaTokenAddress.create(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require msg.value + etherReceived >= etherReceived
        require msg.value + etherReceived >= msg.value
        etherReceived += msg.value
        require totalTokensSold >= totalTokensSold
        require totalTokensSold >= 0
        emit Purchase(msg.value, 0, msg.sender);
    else:
        if etherReceived >= 31250 * 10^18:
            if etherReceived >= 71250 * 10^18:
                require etherReceived < 133750 * 10^18
                require etherReceived <= 133750 * 10^18
                if -etherReceived + 133750 * 10^18 < msg.value:
                    if -etherReceived + 133750 * 10^18:
                        require -etherReceived + 133750 * 10^18
                        require (-80 * etherReceived) + 10700000 * 10^18 / -etherReceived + 133750 * 10^18 == 80
                    require 133750 * 10^18 >= etherReceived
                    require 133750 * 10^18 >= -etherReceived + 133750 * 10^18
                    require -etherReceived + 133750 * 10^18 <= msg.value
                    require not msg.value + etherReceived - 133750 * 10^18
                    require (-80 * etherReceived) + 10700000 * 10^18 >= 0
                    require ext_code.size(moedaTokenAddress)
                    call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (-80 * etherReceived) + 10700000 * 10^18
                    require ext_call.success
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    etherReceived += msg.value
                    require (-80 * etherReceived) + totalTokensSold + 10700000 * 10^18 >= totalTokensSold
                    require totalTokensSold >= 0
                    totalTokensSold = (-80 * etherReceived) + totalTokensSold + 10700000 * 10^18
                    emit Purchase(msg.value, (-80 * etherReceived) + 10700000 * 10^18, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 80 * msg.value / msg.value == 80
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    require msg.value <= msg.value
                    require 80 * msg.value >= 80 * msg.value
                    require 80 * msg.value >= 0
                    require ext_code.size(moedaTokenAddress)
                    call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 80 * msg.value
                    require ext_call.success
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    etherReceived += msg.value
                    require (80 * msg.value) + totalTokensSold >= totalTokensSold
                    require (80 * msg.value) + totalTokensSold >= 80 * msg.value
                    totalTokensSold += 80 * msg.value
                    emit Purchase(msg.value, 80 * msg.value, msg.sender);
            else:
                require etherReceived <= 71250 * 10^18
                if -etherReceived + 71250 * 10^18 >= msg.value:
                    if msg.value:
                        require msg.value
                        require 125 * msg.value / msg.value == 125
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    require msg.value <= msg.value
                    require 125 * msg.value >= 125 * msg.value
                    require 125 * msg.value >= 0
                    require ext_code.size(moedaTokenAddress)
                    call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 125 * msg.value
                    require ext_call.success
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    etherReceived += msg.value
                    require (125 * msg.value) + totalTokensSold >= totalTokensSold
                    require (125 * msg.value) + totalTokensSold >= 125 * msg.value
                    totalTokensSold += 125 * msg.value
                    emit Purchase(msg.value, 125 * msg.value, msg.sender);
                else:
                    if -etherReceived + 71250 * 10^18:
                        require -etherReceived + 71250 * 10^18
                        require (-125 * etherReceived) + 8906250 * 10^18 / -etherReceived + 71250 * 10^18 == 125
                    require 71250 * 10^18 >= etherReceived
                    require 71250 * 10^18 >= -etherReceived + 71250 * 10^18
                    require -etherReceived + 71250 * 10^18 <= msg.value
                    if not msg.value + etherReceived - 71250 * 10^18:
                        require (-125 * etherReceived) + 8906250 * 10^18 >= 0
                        require ext_code.size(moedaTokenAddress)
                        call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (-125 * etherReceived) + 8906250 * 10^18
                        require ext_call.success
                        require msg.value + etherReceived >= etherReceived
                        require msg.value + etherReceived >= msg.value
                        etherReceived += msg.value
                        require (-125 * etherReceived) + totalTokensSold + 8906250 * 10^18 >= totalTokensSold
                        require totalTokensSold >= 0
                        totalTokensSold = (-125 * etherReceived) + totalTokensSold + 8906250 * 10^18
                        emit Purchase(msg.value, (-125 * etherReceived) + 8906250 * 10^18, msg.sender);
                    else:
                        if 62500 * 10^18 < msg.value + etherReceived - 71250 * 10^18:
                            require 62500 * 10^18 <= msg.value + etherReceived - 71250 * 10^18
                            require not msg.value + etherReceived - 133750 * 10^18
                            require (-125 * etherReceived) + 13906250 * 10^18 >= 5000000 * 10^18
                            require ext_code.size(moedaTokenAddress)
                            call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-125 * etherReceived) + 13906250 * 10^18
                            require ext_call.success
                            require msg.value + etherReceived >= etherReceived
                            require msg.value + etherReceived >= msg.value
                            etherReceived += msg.value
                            require (-125 * etherReceived) + totalTokensSold + 13906250 * 10^18 >= totalTokensSold
                            require totalTokensSold >= 0
                            totalTokensSold = (-125 * etherReceived) + totalTokensSold + 13906250 * 10^18
                            emit Purchase(msg.value, (-125 * etherReceived) + 13906250 * 10^18, msg.sender);
                        else:
                            if msg.value + etherReceived - 71250 * 10^18:
                                require msg.value + etherReceived - 71250 * 10^18
                                require (80 * msg.value) + (80 * etherReceived) - 5700000 * 10^18 / msg.value + etherReceived - 71250 * 10^18 == 80
                            require msg.value + etherReceived >= 71250 * 10^18
                            require (80 * msg.value) + (80 * etherReceived) - 5700000 * 10^18 >= 0
                            require (80 * msg.value) + (-45 * etherReceived) + (890625 * 10^15 * 24 * 3600) >= (-125 * etherReceived) + 8906250 * 10^18
                            require (-45 * etherReceived) + (890625 * 10^15 * 24 * 3600) >= (80 * etherReceived) - 5700000 * 10^18
                            require ext_code.size(moedaTokenAddress)
                            call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (80 * msg.value) + (-45 * etherReceived) + (890625 * 10^15 * 24 * 3600)
                            require ext_call.success
                            require msg.value + etherReceived >= etherReceived
                            require msg.value + etherReceived >= msg.value
                            etherReceived += msg.value
                            require (80 * msg.value) + (-45 * etherReceived) + totalTokensSold + (890625 * 10^15 * 24 * 3600) >= totalTokensSold
                            require totalTokensSold >= 0
                            totalTokensSold = (80 * msg.value) + (-45 * etherReceived) + totalTokensSold + (890625 * 10^15 * 24 * 3600)
                            emit Purchase(msg.value, (80 * msg.value) + (-45 * etherReceived) + (890625 * 10^15 * 24 * 3600), msg.sender);
        else:
            require etherReceived <= 31250 * 10^18
            if -etherReceived + 31250 * 10^18 >= msg.value:
                if msg.value:
                    require msg.value
                    require 160 * msg.value / msg.value == 160
                require msg.value + etherReceived >= etherReceived
                require msg.value + etherReceived >= msg.value
                require msg.value <= msg.value
                require 160 * msg.value >= 160 * msg.value
                require 160 * msg.value >= 0
                require ext_code.size(moedaTokenAddress)
                call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 160 * msg.value
                require ext_call.success
                require msg.value + etherReceived >= etherReceived
                require msg.value + etherReceived >= msg.value
                etherReceived += msg.value
                require (160 * msg.value) + totalTokensSold >= totalTokensSold
                require (160 * msg.value) + totalTokensSold >= 160 * msg.value
                totalTokensSold += 160 * msg.value
                emit Purchase(msg.value, 160 * msg.value, msg.sender);
            else:
                if -etherReceived + 31250 * 10^18:
                    require -etherReceived + 31250 * 10^18
                    require (-160 * etherReceived) + 5000000 * 10^18 / -etherReceived + 31250 * 10^18 == 160
                require 31250 * 10^18 >= etherReceived
                require 31250 * 10^18 >= -etherReceived + 31250 * 10^18
                require -etherReceived + 31250 * 10^18 <= msg.value
                if not msg.value + etherReceived - 31250 * 10^18:
                    require (-160 * etherReceived) + 5000000 * 10^18 >= 0
                    require ext_code.size(moedaTokenAddress)
                    call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (-160 * etherReceived) + 5000000 * 10^18
                    require ext_call.success
                    require msg.value + etherReceived >= etherReceived
                    require msg.value + etherReceived >= msg.value
                    etherReceived += msg.value
                    require (-160 * etherReceived) + totalTokensSold + 5000000 * 10^18 >= totalTokensSold
                    require totalTokensSold >= 0
                    totalTokensSold = (-160 * etherReceived) + totalTokensSold + 5000000 * 10^18
                    emit Purchase(msg.value, (-160 * etherReceived) + 5000000 * 10^18, msg.sender);
                else:
                    if 40000 * 10^18 >= msg.value + etherReceived - 31250 * 10^18:
                        if msg.value + etherReceived - 31250 * 10^18:
                            require msg.value + etherReceived - 31250 * 10^18
                            require (125 * msg.value) + (125 * etherReceived) - 3906250 * 10^18 / msg.value + etherReceived - 31250 * 10^18 == 125
                        require msg.value + etherReceived >= 31250 * 10^18
                        require (125 * msg.value) + (125 * etherReceived) - 3906250 * 10^18 >= 0
                        require (125 * msg.value) + (-35 * etherReceived) + 1093750 * 10^18 >= (-160 * etherReceived) + 5000000 * 10^18
                        require (-35 * etherReceived) + 1093750 * 10^18 >= (125 * etherReceived) - 3906250 * 10^18
                        require ext_code.size(moedaTokenAddress)
                        call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (125 * msg.value) + (-35 * etherReceived) + 1093750 * 10^18
                        require ext_call.success
                        require msg.value + etherReceived >= etherReceived
                        require msg.value + etherReceived >= msg.value
                        etherReceived += msg.value
                        require (125 * msg.value) + (-35 * etherReceived) + totalTokensSold + 1093750 * 10^18 >= totalTokensSold
                        require totalTokensSold >= 0
                        totalTokensSold = (125 * msg.value) + (-35 * etherReceived) + totalTokensSold + 1093750 * 10^18
                        emit Purchase(msg.value, (125 * msg.value) + (-35 * etherReceived) + 1093750 * 10^18, msg.sender);
                    else:
                        require 40000 * 10^18 <= msg.value + etherReceived - 31250 * 10^18
                        if not msg.value + etherReceived - 71250 * 10^18:
                            require (-160 * etherReceived) + 10000000 * 10^18 >= 5000000 * 10^18
                            require ext_code.size(moedaTokenAddress)
                            call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-160 * etherReceived) + 10000000 * 10^18
                            require ext_call.success
                            require msg.value + etherReceived >= etherReceived
                            require msg.value + etherReceived >= msg.value
                            etherReceived += msg.value
                            require (-160 * etherReceived) + totalTokensSold + 10000000 * 10^18 >= totalTokensSold
                            require totalTokensSold >= 0
                            totalTokensSold = (-160 * etherReceived) + totalTokensSold + 10000000 * 10^18
                            emit Purchase(msg.value, (-160 * etherReceived) + 10000000 * 10^18, msg.sender);
                        else:
                            if 62500 * 10^18 < msg.value + etherReceived - 71250 * 10^18:
                                require 62500 * 10^18 <= msg.value + etherReceived - 71250 * 10^18
                                require not msg.value + etherReceived - 133750 * 10^18
                                require (-160 * etherReceived) + 15000000 * 10^18 >= 10000000 * 10^18
                                require ext_code.size(moedaTokenAddress)
                                call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (-160 * etherReceived) + 15000000 * 10^18
                                require ext_call.success
                                require msg.value + etherReceived >= etherReceived
                                require msg.value + etherReceived >= msg.value
                                etherReceived += msg.value
                                require (-160 * etherReceived) + totalTokensSold + 15000000 * 10^18 >= totalTokensSold
                                require totalTokensSold >= 0
                                totalTokensSold = (-160 * etherReceived) + totalTokensSold + 15000000 * 10^18
                                emit Purchase(msg.value, (-160 * etherReceived) + 15000000 * 10^18, msg.sender);
                            else:
                                if msg.value + etherReceived - 71250 * 10^18:
                                    require msg.value + etherReceived - 71250 * 10^18
                                    require (80 * msg.value) + (80 * etherReceived) - 5700000 * 10^18 / msg.value + etherReceived - 71250 * 10^18 == 80
                                require msg.value + etherReceived >= 71250 * 10^18
                                require (80 * msg.value) + (80 * etherReceived) - 5700000 * 10^18 >= 0
                                require (80 * msg.value) + (80 * etherReceived) - 700000 * 10^18 >= 5000000 * 10^18
                                require (80 * msg.value) + (-80 * etherReceived) + 4300000 * 10^18 >= (-160 * etherReceived) + 5000000 * 10^18
                                require (-80 * etherReceived) + 4300000 * 10^18 >= (80 * etherReceived) - 700000 * 10^18
                                require ext_code.size(moedaTokenAddress)
                                call moedaTokenAddress.create(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (80 * msg.value) + (-80 * etherReceived) + 4300000 * 10^18
                                require ext_call.success
                                require msg.value + etherReceived >= etherReceived
                                require msg.value + etherReceived >= msg.value
                                etherReceived += msg.value
                                require (80 * msg.value) + (-80 * etherReceived) + totalTokensSold + 4300000 * 10^18 >= totalTokensSold
                                require totalTokensSold >= 0
                                totalTokensSold = (80 * msg.value) + (-80 * etherReceived) + totalTokensSold + 4300000 * 10^18
                                emit Purchase(msg.value, (80 * msg.value) + (-80 * etherReceived) + 4300000 * 10^18, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
