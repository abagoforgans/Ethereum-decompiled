contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint128 stor4; offset 160
address stor4;

function _fallback() payable {
    stor1 = 0xff2496f459154e41353ee5383f4c3b9e3811ef2b
    stor2 = 0
    stor3 = 0
    Mask(96, 0, stor4.field_160) = 0
    require not msg.value
    require code.data[4192 len 20]
    require code.data[4224 len 20]
    stor0 = msg.sender
    stor1 = code.data[4224 len 20]
    address(stor4.field_0) = code.data[4192 len 20]
    return code.data[678 len 3502]
}



// =====================  Runtime code  =====================


const sub_41150806(?) = 552 * 10^13

const sub_7999921e(?) = 30000

const sub_9acf45ca(?) = 168 * 10^13

const sub_a45a1b67(?) = 56000

const sub_a684867d(?) = 10^10

const ICO_END_TIME = (421261 * 3600)

const ICO_START_TIME = 1513152900

const PRESALE_START_TIME = (420068 * 3600)

const TOKENS_SALE = 168 * 10^14

const DECIMAL_FACTOR = 100 * 10^6

const PRESALE_END_TIME = (420253 * 3600)

const TOKENS_MAX = 24 * 10^15

const TOKEN_PER_ETH = 3 * 10^11


address owner;
address beneficiaryWalletAddress;
uint256 totalTokensSold;
uint256 presaleTokensSold;
uint8 stor4; offset 160
uint128 stor4; offset 160
address tokenContractAddress;

function presaleTokensSold() {
    return presaleTokensSold
}

function tokenContract() {
    return tokenContractAddress
}

function totalTokensSold() {
    return totalTokensSold
}

function saleCompleted() {
    return bool(uint8(stor4.field_160))
}

function owner() {
    return owner
}

function beneficiaryWallet() {
    return beneficiaryWalletAddress
}

function initializeSale() {
    require owner == msg.sender
    emit SaleInitialized()
    return 1
}

function saleFinalize() {
    require owner == msg.sender
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
    emit 0x72d2dd0b 
    return 1
}

function buyTokens() payable {
    require block.timestamp >= 1513152900
    require block.timestamp <= 421261 * 3600
    require not uint8(stor4.field_160)
    require msg.value >= 10^10
    require totalTokensSold < 168 * 10^14
    require block.timestamp >= 1513152900
    require block.timestamp <= 421261 * 3600
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value:
        require msg.value
        require 3000 * msg.value / msg.value == 3000
    if block.timestamp < 1513152900:
        require 3000 * msg.value / 10^10 > 0
        require ext_call.return_data[0] >= 3000 * msg.value / 10^10
        require totalTokensSold + (3000 * msg.value / 10^10) >= totalTokensSold
        totalTokensSold += 3000 * msg.value / 10^10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 3000 * msg.value / 10^10
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensPurchased(msg.sender, msg.value, 3000 * msg.value / 10^10);
    else:
        if block.timestamp < 420349 * 3600:
            if 3000 * msg.value / 10^10:
                require 3000 * msg.value / 10^10
                require 120 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 120
            require 120 * 3000 * msg.value / 10^10 / 100 > 0
            require ext_call.return_data[0] >= 120 * 3000 * msg.value / 10^10 / 100
            require totalTokensSold + (120 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
            totalTokensSold += 120 * 3000 * msg.value / 10^10 / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 120 * 3000 * msg.value / 10^10 / 100
            require ext_call.success
            require ext_call.return_data[0]
            call beneficiaryWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensPurchased(msg.sender, msg.value, 120 * 3000 * msg.value / 10^10 / 100);
        else:
            if block.timestamp < 420469 * 3600:
                if 3000 * msg.value / 10^10:
                    require 3000 * msg.value / 10^10
                    require 115 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 115
                require 115 * 3000 * msg.value / 10^10 / 100 > 0
                require ext_call.return_data[0] >= 115 * 3000 * msg.value / 10^10 / 100
                require totalTokensSold + (115 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
                totalTokensSold += 115 * 3000 * msg.value / 10^10 / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 115 * 3000 * msg.value / 10^10 / 100
                require ext_call.success
                require ext_call.return_data[0]
                call beneficiaryWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensPurchased(msg.sender, msg.value, 115 * 3000 * msg.value / 10^10 / 100);
            else:
                if block.timestamp >= 420661 * 3600:
                    require 3000 * msg.value / 10^10 > 0
                    require ext_call.return_data[0] >= 3000 * msg.value / 10^10
                    require totalTokensSold + (3000 * msg.value / 10^10) >= totalTokensSold
                    totalTokensSold += 3000 * msg.value / 10^10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 3000 * msg.value / 10^10
                    require ext_call.success
                    require ext_call.return_data[0]
                    call beneficiaryWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensPurchased(msg.sender, msg.value, 3000 * msg.value / 10^10);
                else:
                    if 3000 * msg.value / 10^10:
                        require 3000 * msg.value / 10^10
                        require 110 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 110
                    require 110 * 3000 * msg.value / 10^10 / 100 > 0
                    require ext_call.return_data[0] >= 110 * 3000 * msg.value / 10^10 / 100
                    require totalTokensSold + (110 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
                    totalTokensSold += 110 * 3000 * msg.value / 10^10 / 100
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 110 * 3000 * msg.value / 10^10 / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    call beneficiaryWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensPurchased(msg.sender, msg.value, 110 * 3000 * msg.value / 10^10 / 100);
    if totalTokensSold == 168 * 10^14:
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        emit 0x72d2dd0b 
    return 1
}

function _fallback() payable {
    require block.timestamp >= 1513152900
    require block.timestamp <= 421261 * 3600
    require block.timestamp >= 1513152900
    require block.timestamp <= 421261 * 3600
    require not uint8(stor4.field_160)
    require msg.value >= 10^10
    require totalTokensSold < 168 * 10^14
    require block.timestamp >= 1513152900
    require block.timestamp <= 421261 * 3600
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value:
        require msg.value
        require 3000 * msg.value / msg.value == 3000
    if block.timestamp < 1513152900:
        require 3000 * msg.value / 10^10 > 0
        require ext_call.return_data[0] >= 3000 * msg.value / 10^10
        require totalTokensSold + (3000 * msg.value / 10^10) >= totalTokensSold
        totalTokensSold += 3000 * msg.value / 10^10
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 3000 * msg.value / 10^10
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit TokensPurchased(msg.sender, msg.value, 3000 * msg.value / 10^10);
    else:
        if block.timestamp < 420349 * 3600:
            if 3000 * msg.value / 10^10:
                require 3000 * msg.value / 10^10
                require 120 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 120
            require 120 * 3000 * msg.value / 10^10 / 100 > 0
            require ext_call.return_data[0] >= 120 * 3000 * msg.value / 10^10 / 100
            require totalTokensSold + (120 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
            totalTokensSold += 120 * 3000 * msg.value / 10^10 / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 120 * 3000 * msg.value / 10^10 / 100
            require ext_call.success
            require ext_call.return_data[0]
            call beneficiaryWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit TokensPurchased(msg.sender, msg.value, 120 * 3000 * msg.value / 10^10 / 100);
        else:
            if block.timestamp < 420469 * 3600:
                if 3000 * msg.value / 10^10:
                    require 3000 * msg.value / 10^10
                    require 115 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 115
                require 115 * 3000 * msg.value / 10^10 / 100 > 0
                require ext_call.return_data[0] >= 115 * 3000 * msg.value / 10^10 / 100
                require totalTokensSold + (115 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
                totalTokensSold += 115 * 3000 * msg.value / 10^10 / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 115 * 3000 * msg.value / 10^10 / 100
                require ext_call.success
                require ext_call.return_data[0]
                call beneficiaryWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit TokensPurchased(msg.sender, msg.value, 115 * 3000 * msg.value / 10^10 / 100);
            else:
                if block.timestamp >= 420661 * 3600:
                    require 3000 * msg.value / 10^10 > 0
                    require ext_call.return_data[0] >= 3000 * msg.value / 10^10
                    require totalTokensSold + (3000 * msg.value / 10^10) >= totalTokensSold
                    totalTokensSold += 3000 * msg.value / 10^10
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 3000 * msg.value / 10^10
                    require ext_call.success
                    require ext_call.return_data[0]
                    call beneficiaryWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensPurchased(msg.sender, msg.value, 3000 * msg.value / 10^10);
                else:
                    if 3000 * msg.value / 10^10:
                        require 3000 * msg.value / 10^10
                        require 110 * 3000 * msg.value / 10^10 / 3000 * msg.value / 10^10 == 110
                    require 110 * 3000 * msg.value / 10^10 / 100 > 0
                    require ext_call.return_data[0] >= 110 * 3000 * msg.value / 10^10 / 100
                    require totalTokensSold + (110 * 3000 * msg.value / 10^10 / 100) >= totalTokensSold
                    totalTokensSold += 110 * 3000 * msg.value / 10^10 / 100
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 110 * 3000 * msg.value / 10^10 / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    call beneficiaryWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit TokensPurchased(msg.sender, msg.value, 110 * 3000 * msg.value / 10^10 / 100);
    if totalTokensSold == 168 * 10^14:
        require not uint8(stor4.field_160)
        Mask(96, 0, stor4.field_160) = 1
        emit 0x72d2dd0b 
}



}
