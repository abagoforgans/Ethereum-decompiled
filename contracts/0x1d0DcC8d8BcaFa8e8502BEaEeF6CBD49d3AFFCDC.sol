contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor10;

function _fallback() {
    require code.data[5336 len 20]
    require code.data[5356 len 32]
    require code.data[5388 len 32]
    stor2 = msg.sender
    stor1 = code.data[5336 len 20]
    stor3 = code.data[5356 len 32]
    stor4 = code.data[5388 len 32]
    stor10 = 0
    return code.data[318 len 5006]
}



// =====================  Runtime code  =====================


const MAX_TOKENS_SOLD = (2500 * 10^18 * 3600)

const WAITING_PERIOD = (168 * 24 * 3600)


address gnosisTokenAddress;
address walletAddress;
address owner;
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

function gnosisToken() {
    return gnosisTokenAddress
}

function bids(address arg1) {
    return bids[arg1]
}

function ceiling() {
    return ceiling
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

function priceFactor() {
    return priceFactor
}

function _fallback() payable {
    revert
}

function calcStopPrice() {
    return ((10^18 * totalReceived / 2500 * 10^18 * 3600) + 1)
}

function calcTokenPrice() {
    require block.number + -startBlock + 7500
    return ((10^18 * priceFactor / block.number + -startBlock + 7500) + 1)
}

function startAuction() {
    require msg.sender == walletAddress
    require stage <= 4
    require stage == 1
    stage = 2
    startBlock = block.number
}

function changeSettings(uint256 arg1, uint256 arg2) {
    require msg.sender == walletAddress
    require stage <= 4
    require stage == 1
    ceiling = arg1
    priceFactor = arg2
}

function setup(address arg1) {
    require msg.sender == owner
    require stage <= 4
    require not stage
    require arg1
    gnosisTokenAddress = arg1
    require ext_code.size(gnosisTokenAddress)
    call gnosisTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == 2500 * 10^18 * 3600
    stage = 1
}

function updateStage() {
    require stage <= 4
    if stage != 2:
        if stage <= 4:
            if stage == 3:
                if block.timestamp > endTime + (168 * 24 * 3600):
                    stage = 4
            if stage <= 4:
                return stage
    else:
        if block.number + -startBlock + 7500:
            if 10^18 * priceFactor / block.number + -startBlock + 7500 > 10^18 * totalReceived / 2500 * 10^18 * 3600:
                if stage <= 4:
                    if stage == 3:
                        if block.timestamp > endTime + (168 * 24 * 3600):
                            stage = 4
                    if stage <= 4:
                        return stage
            else:
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                    if finalPrice:
                        if ext_code.size(gnosisTokenAddress):
                            call gnosisTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 50 wei
                                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                            if ext_call.success:
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime + (168 * 24 * 3600):
                                            stage = 4
                                    if stage <= 4:
                                        return stage
                else:
                    if block.number + -startBlock + 7500:
                        finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                        if finalPrice:
                            if ext_code.size(gnosisTokenAddress):
                                call gnosisTokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 50 wei
                                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                                if ext_call.success:
                                    endTime = block.timestamp
                                    if stage <= 4:
                                        if stage == 3:
                                            if block.timestamp > endTime + (168 * 24 * 3600):
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
                if block.timestamp > endTime + (168 * 24 * 3600):
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
        if block.number + -startBlock + 7500:
            if 10^18 * priceFactor / block.number + -startBlock + 7500 > 10^18 * totalReceived / 2500 * 10^18 * 3600:
                if stage <= 4:
                    if stage == 3:
                        if block.timestamp > endTime + (168 * 24 * 3600):
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
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                    if finalPrice:
                        if ext_code.size(gnosisTokenAddress):
                            call gnosisTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 50 wei
                                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                            if ext_call.success:
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime + (168 * 24 * 3600):
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
                    if block.number + -startBlock + 7500:
                        finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                        if finalPrice:
                            if ext_code.size(gnosisTokenAddress):
                                call gnosisTokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 50 wei
                                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                                if ext_call.success:
                                    endTime = block.timestamp
                                    if stage <= 4:
                                        if stage == 3:
                                            if block.timestamp > endTime + (168 * 24 * 3600):
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

function claimTokens(address arg1) {
    if 4 != calldata.size:
        require calldata.size == 36
    require stage <= 4
    if stage != 2:
        if stage <= 4:
            if stage == 3:
                if block.timestamp > endTime + (168 * 24 * 3600):
                    stage = 4
            if stage <= 4:
                require stage == 4
                if arg1:
                    if finalPrice:
                        bids[address(arg1)] = 0
                        if ext_code.size(gnosisTokenAddress):
                            call gnosisTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), 10^18 * bids[address(arg1)] / finalPrice
                            if ext_call.success:
                else:
                    if finalPrice:
                        bids[address(msg.sender)] = 0
                        if ext_code.size(gnosisTokenAddress):
                            call gnosisTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, 10^18 * bids[address(msg.sender)] / finalPrice
                            if ext_call.success:
    else:
        if block.number + -startBlock + 7500:
            if 10^18 * priceFactor / block.number + -startBlock + 7500 > 10^18 * totalReceived / 2500 * 10^18 * 3600:
                if stage <= 4:
                    if stage == 3:
                        if block.timestamp > endTime + (168 * 24 * 3600):
                            stage = 4
                    if stage <= 4:
                        require stage == 4
                        if arg1:
                            if finalPrice:
                                bids[address(arg1)] = 0
                                if ext_code.size(gnosisTokenAddress):
                                    call gnosisTokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), 10^18 * bids[address(arg1)] / finalPrice
                                    if ext_call.success:
                        else:
                            if finalPrice:
                                bids[address(msg.sender)] = 0
                                if ext_code.size(gnosisTokenAddress):
                                    call gnosisTokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender, 10^18 * bids[address(msg.sender)] / finalPrice
                                    if ext_call.success:
            else:
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                    if finalPrice:
                        if ext_code.size(gnosisTokenAddress):
                            call gnosisTokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 50 wei
                                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                            if ext_call.success:
                                endTime = block.timestamp
                                if stage <= 4:
                                    if stage == 3:
                                        if block.timestamp > endTime + (168 * 24 * 3600):
                                            stage = 4
                                    if stage <= 4:
                                        require stage == 4
                                        if arg1:
                                            if finalPrice:
                                                bids[address(arg1)] = 0
                                                if ext_code.size(gnosisTokenAddress):
                                                    call gnosisTokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 50 wei
                                                        args address(arg1), 10^18 * bids[address(arg1)] / finalPrice
                                                    if ext_call.success:
                                        else:
                                            if finalPrice:
                                                bids[address(msg.sender)] = 0
                                                if ext_code.size(gnosisTokenAddress):
                                                    call gnosisTokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 50 wei
                                                        args msg.sender, 10^18 * bids[address(msg.sender)] / finalPrice
                                                    if ext_call.success:
                else:
                    if block.number + -startBlock + 7500:
                        finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                        if finalPrice:
                            if ext_code.size(gnosisTokenAddress):
                                call gnosisTokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 50 wei
                                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                                if ext_call.success:
                                    endTime = block.timestamp
                                    if stage <= 4:
                                        if stage == 3:
                                            if block.timestamp > endTime + (168 * 24 * 3600):
                                                stage = 4
                                        if stage <= 4:
                                            require stage == 4
                                            if arg1:
                                                if finalPrice:
                                                    bids[address(arg1)] = 0
                                                    if ext_code.size(gnosisTokenAddress):
                                                        call gnosisTokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 50 wei
                                                            args address(arg1), 10^18 * bids[address(arg1)] / finalPrice
                                                        if ext_call.success:
                                            else:
                                                if finalPrice:
                                                    bids[address(msg.sender)] = 0
                                                    if ext_code.size(gnosisTokenAddress):
                                                        call gnosisTokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 50 wei
                                                            args msg.sender, 10^18 * bids[address(msg.sender)] / finalPrice
                                                        if ext_call.success:
    revert
}

function bid(address arg1) payable {
    if 4 != calldata.size:
        require calldata.size == 36
    require stage <= 4
    if stage == 2:
        require block.number + -startBlock + 7500
        if 10^18 * priceFactor / block.number + -startBlock + 7500 <= 10^18 * totalReceived / 2500 * 10^18 * 3600:
            stage = 3
            if totalReceived != ceiling:
                finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
            else:
                require block.number + -startBlock + 7500
                finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
            require finalPrice
            require ext_code.size(gnosisTokenAddress)
            call gnosisTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
            require ext_call.success
            endTime = block.timestamp
    require stage <= 4
    if stage == 3:
        if block.timestamp > endTime + (168 * 24 * 3600):
            stage = 4
    require stage <= 4
    require stage == 2
    require block.number + -startBlock + 7500
    if arg1:
        if ceiling >= (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + (2500 * 3600):
            if msg.value <= (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600):
                require msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                bids[address(arg1)] += msg.value
                totalReceived += msg.value
                if (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) == msg.value:
                    stage = 3
                    if totalReceived != ceiling:
                        finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                    else:
                        require block.number + -startBlock + 7500
                        finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                    require finalPrice
                    require ext_code.size(gnosisTokenAddress)
                    call gnosisTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                    require ext_call.success
                    endTime = block.timestamp
                emit BidSubmission(msg.value, arg1);
                return msg.value
            call arg1 with:
               value msg.value + (-9 * 10^6 * 10^18 * priceFactor / block.number + -startBlock + 7500) + totalReceived - (2500 * 3600) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)
            call walletAddress with:
               value (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            bids[address(arg1)] = bids[address(arg1)] + (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)
            totalReceived = (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + (2500 * 3600)
            if (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) == (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600):
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                else:
                    require block.number + -startBlock + 7500
                    finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require finalPrice
                require ext_code.size(gnosisTokenAddress)
                call gnosisTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                require ext_call.success
                endTime = block.timestamp
            emit BidSubmission(((2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)), arg1);
            return ((2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600))
        if msg.value <= ceiling - totalReceived:
            require msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            bids[address(arg1)] += msg.value
            totalReceived += msg.value
            if ceiling - totalReceived == msg.value:
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                else:
                    require block.number + -startBlock + 7500
                    finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require finalPrice
                require ext_code.size(gnosisTokenAddress)
                call gnosisTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                require ext_call.success
                endTime = block.timestamp
            emit BidSubmission(msg.value, arg1);
            return msg.value
        call arg1 with:
           value msg.value - ceiling + totalReceived wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ceiling - totalReceived
        call walletAddress with:
           value ceiling - totalReceived wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        bids[address(arg1)] = bids[address(arg1)] + ceiling - totalReceived
        totalReceived = ceiling
        if ceiling - totalReceived == ceiling - totalReceived:
            stage = 3
            if totalReceived != ceiling:
                finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
            else:
                require block.number + -startBlock + 7500
                finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
            require finalPrice
            require ext_code.size(gnosisTokenAddress)
            call gnosisTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
            require ext_call.success
            endTime = block.timestamp
        emit BidSubmission((ceiling - totalReceived), arg1);
    else:
        if ceiling >= (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + (2500 * 3600):
            if msg.value <= (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600):
                require msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                bids[address(msg.sender)] += msg.value
                totalReceived += msg.value
                if (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) == msg.value:
                    stage = 3
                    if totalReceived != ceiling:
                        finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                    else:
                        require block.number + -startBlock + 7500
                        finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                    require finalPrice
                    require ext_code.size(gnosisTokenAddress)
                    call gnosisTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                    require ext_call.success
                    endTime = block.timestamp
                emit BidSubmission(msg.value, msg.sender);
                return msg.value
            call msg.sender with:
               value msg.value + (-9 * 10^6 * 10^18 * priceFactor / block.number + -startBlock + 7500) + totalReceived - (2500 * 3600) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)
            call walletAddress with:
               value (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            bids[address(msg.sender)] = bids[address(msg.sender)] + (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)
            totalReceived = (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + (2500 * 3600)
            if (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600) == (2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600):
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                else:
                    require block.number + -startBlock + 7500
                    finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require finalPrice
                require ext_code.size(gnosisTokenAddress)
                call gnosisTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                require ext_call.success
                endTime = block.timestamp
            emit BidSubmission(((2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600)), msg.sender);
            return ((2500 * 3600 * 10^18 * priceFactor / block.number + -startBlock + 7500) + -totalReceived + (2500 * 3600))
        if msg.value <= ceiling - totalReceived:
            require msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            bids[address(msg.sender)] += msg.value
            totalReceived += msg.value
            if ceiling - totalReceived == msg.value:
                stage = 3
                if totalReceived != ceiling:
                    finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
                else:
                    require block.number + -startBlock + 7500
                    finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
                require finalPrice
                require ext_code.size(gnosisTokenAddress)
                call gnosisTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
                require ext_call.success
                endTime = block.timestamp
            emit BidSubmission(msg.value, msg.sender);
            return msg.value
        call msg.sender with:
           value msg.value - ceiling + totalReceived wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ceiling - totalReceived
        call walletAddress with:
           value ceiling - totalReceived wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        bids[address(msg.sender)] = bids[address(msg.sender)] + ceiling - totalReceived
        totalReceived = ceiling
        if ceiling - totalReceived == ceiling - totalReceived:
            stage = 3
            if totalReceived != ceiling:
                finalPrice = (10^18 * totalReceived / 2500 * 10^18 * 3600) + 1
            else:
                require block.number + -startBlock + 7500
                finalPrice = (10^18 * priceFactor / block.number + -startBlock + 7500) + 1
            require finalPrice
            require ext_code.size(gnosisTokenAddress)
            call gnosisTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args walletAddress, -(10^18 * totalReceived / finalPrice) + (2500 * 10^18 * 3600)
            require ext_call.success
            endTime = block.timestamp
        emit BidSubmission((ceiling - totalReceived), msg.sender);
    return (ceiling - totalReceived)
}



}
