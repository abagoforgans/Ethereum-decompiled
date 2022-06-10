contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of uint8 stor8;

function _fallback() payable {
    stor0 = 1000
    require not msg.value
    mem[96 len -21200] = code.data[21641 len -21200]
    mem[64] = -21104
    require mem[108 len 20]
    require mem[140 len 20]
    require mem[172 len 20]
    require mem[204 len 20]
    require mem[256] > 1
    require mem[288] > 0
    stor2 = mem[108 len 20]
    stor3 = mem[140 len 20]
    stor4 = mem[172 len 20]
    stor5 = mem[204 len 20]
    stor1 = mem[256]
    stor0 = mem[288]
    idx = 0
    while idx < mem[mem[224] + 96]:
        require idx < mem[mem[224] + 96]
        require mem[(32 * idx) + mem[224] + 140 len 20]
        require idx < mem[mem[224] + 96]
        mem[0] = mem[(32 * idx) + mem[224] + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + mem[224] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return code.data[441 len 21200]
}



// =====================  Runtime code  =====================


const ORDERBOOK_BURN_FEE_BPS = 25


uint256 minNewOrderValueUsd;
uint256 maxOrdersPerTrade;
address kyberNetworkContractAddress;
address orderFactoryContractAddress;
address medianizerContractAddress;
address kncTokenAddress;
mapping of address reserves;
mapping of uint8 reserveListingStage;
mapping of uint8 stor8;

function reserveListingStage(address arg1) {
    require reserveListingStage[arg1] <= 3
    return reserveListingStage[arg1]
}

function kyberNetworkContract() {
    return kyberNetworkContractAddress
}

function maxOrdersPerTrade() {
    return maxOrdersPerTrade
}

function kncToken() {
    return kncTokenAddress
}

function orderFactoryContract() {
    return orderFactoryContractAddress
}

function reserves(address arg1) {
    return reserves[arg1]
}

function minNewOrderValueUsd() {
    return minNewOrderValueUsd
}

function medianizerContract() {
    return medianizerContractAddress
}

function _fallback() payable {
    revert
}

function getOrderbookListingStage(address arg1) {
    require reserveListingStage[address(arg1)] <= 3
    return reserves[address(arg1)], reserveListingStage[address(arg1)]
}

function initOrderbookContract(address arg1) {
    require reserveListingStage[address(arg1)] <= 3
    require reserveListingStage[address(arg1)] == 1
    require ext_code.size(reserves[address(arg1)])
    call reserves[address(arg1)].init() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    reserveListingStage[address(arg1)] = 2
    emit code.data[21125 len 32]: address(arg1), 2
    return 1
}

function unlistOrderbookContract(address arg1, uint256 arg2) {
    require reserveListingStage[address(arg1)] <= 3
    require reserveListingStage[address(arg1)] == 3
    require ext_code.size(reserves[address(arg1)])
    call reserves[address(arg1)].kncRateBlocksTrade() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(kyberNetworkContractAddress)
    call kyberNetworkContractAddress.0x249715b3 with:
         gas gas_remaining - 710 wei
        args reserves[address(arg1)], arg2
    require ext_call.success
    require ext_call.return_data[0]
    reserveListingStage[address(arg1)] = 0
    reserves[address(arg1)] = 0
    emit code.data[21125 len 32]: address(arg1), 0
}

function addOrderbookContract(address arg1) {
    require reserveListingStage[address(arg1)] <= 3
    require not reserveListingStage[address(arg1)]
    require not stor8[address(arg1)]
    require ext_code.size(kyberNetworkContractAddress)
    call kyberNetworkContractAddress.0x579425b7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[3007 len 18118], kncTokenAddress, address(arg1), address(ext_call.return_data[0]), kyberNetworkContractAddress, medianizerContractAddress, orderFactoryContractAddress, minNewOrderValueUsd, maxOrdersPerTrade, 25
    require create.new_address
    reserves[address(arg1)] = address(create.new_address)
    reserveListingStage[address(arg1)] = 1
    emit code.data[21125 len 32]: address(arg1), 1
    return 1
}

function listOrderbookContract(address arg1) {
    require reserveListingStage[address(arg1)] <= 3
    require reserveListingStage[address(arg1)] == 2
    require ext_code.size(kyberNetworkContractAddress)
    call kyberNetworkContractAddress.0xa0d7bb1b with:
         gas gas_remaining - 710 wei
        args reserves[address(arg1)], 1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(kyberNetworkContractAddress)
    call kyberNetworkContractAddress.0xe02584bf with:
         gas gas_remaining - 710 wei
        args 0, 0, 0, 1, 1, 1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(kyberNetworkContractAddress)
    call kyberNetworkContractAddress.0x579425b7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x46b8c49e with:
         gas gas_remaining - 710 wei
        args reserves[address(arg1)], 25, reserves[address(arg1)]
    require ext_call.success
    reserveListingStage[address(arg1)] = 3
    emit code.data[21125 len 32]: address(arg1), 3
    return 1
}



}
