contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;

function _fallback() {
    mem[96 len -2033] = code.data[2391 len -2033]
    mem[64] = -1937
    require mem[160] < mem[192]
    require mem[160] >= block.number
    require mem[108 len 20]
    stor0 = mem[108 len 20]
    stor1 = mem[128]
    stor2 = mem[160]
    stor3 = mem[192]
    stor4.length = (2 * mem[mem[224] + 96]) + 1
    s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
    idx = mem[224] + 128
    while mem[224] + mem[mem[224] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[224] + 96] + 31) >> 5) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
    while (stor4.length + 31 / 32) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    return code.data[358 len 2033]
}



// =====================  Runtime code  =====================


address owner;
uint256 bidIncrement;
uint256 startBlock;
uint256 endBlock;
array of uint256 ipfsHash;
uint8 stor5;
uint256 highestBindingBid;
address highestBidderAddress;
mapping of uint256 highestBid;
uint8 stor9;

function endBlock() {
    return endBlock
}

function canceled() {
    return bool(stor5)
}

function startBlock() {
    return startBlock
}

function getHighestBid() {
    return highestBid[stor7]
}

function owner() {
    return owner
}

function highestBidder() {
    return highestBidderAddress
}

function bidIncrement() {
    return bidIncrement
}

function ipfsHash() {
    return ipfsHash[0 len ipfsHash.length]
}

function fundsByBidder(address arg1) {
    return highestBid[arg1]
}

function highestBindingBid() {
    return highestBindingBid
}

function _fallback() payable {
    revert 
}

function cancelAuction() {
    require owner == msg.sender
    require block.number <= endBlock
    require not stor5
    stor5 = 1
    emit LogCanceled()
    return 1
}

function placeBid() payable {
    require block.number >= startBlock
    require block.number <= endBlock
    require not stor5
    require owner != msg.sender
    require msg.value
    require highestBid[address(msg.sender)] + msg.value > highestBindingBid
    highestBid[msg.sender] = highestBid[address(msg.sender)] + msg.value
    if highestBid[address(msg.sender)] + msg.value <= highestBid[stor7]:
        if highestBid[address(msg.sender)] + msg.value + bidIncrement >= highestBid[stor7]:
            highestBindingBid = highestBid[stor7]
        else:
            highestBindingBid = highestBid[address(msg.sender)] + msg.value + bidIncrement
        emit LogBid(address(msg.sender), highestBid[address(msg.sender)] + msg.value, highestBidderAddress, highestBid[stor7], highestBindingBid);
    else:
        if highestBidderAddress != msg.sender:
            highestBidderAddress = msg.sender
            if highestBid[address(msg.sender)] + msg.value >= highestBid[stor7] + bidIncrement:
                highestBindingBid = highestBid[stor7] + bidIncrement
            else:
                highestBindingBid = highestBid[address(msg.sender)] + msg.value
        emit LogBid(address(msg.sender), highestBid[address(msg.sender)] + msg.value, highestBidderAddress, highestBid[address(msg.sender)] + msg.value, highestBindingBid);
    return 1
}

function withdraw() {
    if block.number < endBlock:
        require stor5
        require highestBid[address(msg.sender)]
        highestBid[address(msg.sender)] = 0
        call msg.sender with:
           value highestBid[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogWithdrawal(msg.sender, msg.sender, highestBid[address(msg.sender)]);
    else:
        if stor5:
            require highestBid[address(msg.sender)]
            highestBid[address(msg.sender)] = 0
            call msg.sender with:
               value highestBid[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogWithdrawal(msg.sender, msg.sender, highestBid[address(msg.sender)]);
        else:
            if owner == msg.sender:
                stor9 = 1
                require highestBindingBid
                highestBid[stor7] -= highestBindingBid
                call msg.sender with:
                   value highestBindingBid wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LogWithdrawal(msg.sender, highestBidderAddress, highestBindingBid);
            else:
                if highestBidderAddress != msg.sender:
                    require highestBid[address(msg.sender)]
                    highestBid[address(msg.sender)] = 0
                    call msg.sender with:
                       value highestBid[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit LogWithdrawal(msg.sender, msg.sender, highestBid[address(msg.sender)]);
                else:
                    if not stor9:
                        require highestBid[stor7] - highestBindingBid
                        highestBid[stor7] = highestBindingBid
                        call msg.sender with:
                           value highestBid[stor7] - highestBindingBid wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit LogWithdrawal(msg.sender, highestBidderAddress, highestBid[stor7] - highestBindingBid);
                    else:
                        require highestBid[stor7]
                        highestBid[stor7] = 0
                        call msg.sender with:
                           value highestBid[stor7] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit LogWithdrawal(msg.sender, highestBidderAddress, highestBid[stor7]);
    return 1
}



}
