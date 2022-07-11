contract main {




// =====================  Runtime code  =====================


#
#  - bid(bytes arg1)
#
const WAITING_PERIOD = 0


mapping of uint8 stor0;
address owner;
address tokenAddress;
address ambixAddress;
address walletAddress;
uint256 sub_da8e0b78;
uint256 ceiling;
uint256 priceFactor;
uint256 startBlock;
uint256 endTime;
uint256 totalReceived;
uint256 finalPrice;
mapping of uint256 bids;
uint8 stage;

function endTime() {
    return endTime
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function ambix() {
    return ambixAddress
}

function bids(address arg1) {
    require calldata.size - 4 >= 32
    return bids[arg1]
}

function ceiling() {
    return ceiling
}

function isSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function owner() {
    return owner
}

function totalReceived() {
    return totalReceived
}

function finalPrice() {
    return finalPrice
}

function stage() {
    require stage <= 4
    return stage
}

function sub_da8e0b78(?) {
    return sub_da8e0b78
}

function priceFactor() {
    return priceFactor
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function calcStopPrice() {
    require sub_da8e0b78
    return ((10^9 * totalReceived / sub_da8e0b78) + 1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function startAuction() {
    require msg.sender == owner
    require stage <= 4
    require stage == 1
    stage = 2
    startBlock = block.number
}

function calcTokenPrice() {
    require block.number + -startBlock + 7500
    return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
}

function renounceSigner() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addSigner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function setup(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require stage <= 4
    require not stage
    require arg1
    require arg2
    tokenAddress = arg1
    ambixAddress = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == sub_da8e0b78
    stage = 1
}

function claimTokens() {
    if 4 != calldata.size:
        require calldata.size == 164
    require stage <= 4
    if stage == 2:
        require sub_da8e0b78
        require block.number + -startBlock + 7500
        if 10^18 * priceFactor / block.number + -startBlock + 7500 <= 10^9 * totalReceived / sub_da8e0b78:
            stage = 3
            if totalReceived == ceiling:
                require block.number + -startBlock + 7500
                finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require ext_code.size(tokenAddress)
                if totalReceived != ceiling:
                    call tokenAddress.0x42966c68 with:
                         gas gas_remaining wei
                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                require sub_da8e0b78
                finalPrice = (10^9 * totalReceived / sub_da8e0b78) + 1
                require (10^9 * totalReceived / sub_da8e0b78) + 1
                require ext_code.size(tokenAddress)
                if totalReceived != ceiling:
                    call tokenAddress.0x42966c68 with:
                         gas gas_remaining wei
                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            endTime = block.timestamp
    require stage <= 4
    if stage == 3:
        if block.timestamp > endTime:
            stage = 4
    require stage <= 4
    require stage == 4
    require finalPrice
    bids[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^9 * bids[msg.sender] / finalPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function updateStage() {
    require stage <= 4
    if stage != 2:
        if stage <= 4:
            if stage == 3:
                if block.timestamp > endTime:
                    stage = 4
            if stage <= 4:
                return stage
    else:
        if sub_da8e0b78:
            if block.number + -startBlock + 7500:
                if 10^18 * priceFactor / block.number + -startBlock + 7500 > 10^9 * totalReceived / sub_da8e0b78:
                    if stage <= 4:
                        if stage == 3:
                            if block.timestamp > endTime:
                                stage = 4
                        if stage <= 4:
                            return stage
                else:
                    stage = 3
                    if totalReceived == ceiling:
                        if block.number + -startBlock + 7500:
                            finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                            if (10^18 * priceFactor / block.number + -startBlock + 7500) + 1:
                                require ext_code.size(tokenAddress)
                                if totalReceived != ceiling:
                                    call tokenAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime:
                                            stage = 4
                                    if stage <= 4:
                                        return stage
                    else:
                        if sub_da8e0b78:
                            finalPrice = (10^9 * totalReceived / sub_da8e0b78) + 1
                            if (10^9 * totalReceived / sub_da8e0b78) + 1:
                                require ext_code.size(tokenAddress)
                                if totalReceived != ceiling:
                                    call tokenAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime:
                                            stage = 4
                                    if stage <= 4:
                                        return stage
    revert
}

function calcCurrentTokenPrice() {
    require stage <= 4
    if stage != 2:
        if stage <= 4:
            if stage == 3:
                if block.timestamp > endTime:
                    stage = 4
            if stage <= 4:
                if stage == 3:
                    return finalPrice
                if stage <= 4:
                    if stage == 4:
                        return finalPrice
                    if block.number + -startBlock + 7500:
                        return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
    else:
        if sub_da8e0b78:
            if block.number + -startBlock + 7500:
                if 10^18 * priceFactor / block.number + -startBlock + 7500 > 10^9 * totalReceived / sub_da8e0b78:
                    if stage <= 4:
                        if stage == 3:
                            if block.timestamp > endTime:
                                stage = 4
                        if stage <= 4:
                            if stage == 3:
                                return finalPrice
                            if stage <= 4:
                                if stage == 4:
                                    return finalPrice
                                if block.number + -startBlock + 7500:
                                    return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
                else:
                    stage = 3
                    if totalReceived == ceiling:
                        if block.number + -startBlock + 7500:
                            finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                            if (10^18 * priceFactor / block.number + -startBlock + 7500) + 1:
                                require ext_code.size(tokenAddress)
                                if totalReceived != ceiling:
                                    call tokenAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime:
                                            stage = 4
                                    if stage <= 4:
                                        if stage == 3:
                                            return finalPrice
                                        if stage <= 4:
                                            if stage == 4:
                                                return finalPrice
                                            if block.number + -startBlock + 7500:
                                                return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
                    else:
                        if sub_da8e0b78:
                            finalPrice = (10^9 * totalReceived / sub_da8e0b78) + 1
                            if (10^9 * totalReceived / sub_da8e0b78) + 1:
                                require ext_code.size(tokenAddress)
                                if totalReceived != ceiling:
                                    call tokenAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args (sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args ambixAddress, sub_da8e0b78 - (10^9 * totalReceived / (10^9 * totalReceived / sub_da8e0b78) + 1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime:
                                            stage = 4
                                    if stage <= 4:
                                        if stage == 3:
                                            return finalPrice
                                        if stage <= 4:
                                            if stage == 4:
                                                return finalPrice
                                            if block.number + -startBlock + 7500:
                                                return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
    revert
}



}
