contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor0 = code.data[3505 len 32] or Mask(96, 160, stor0)
    stor2 = 0x89e7a245d5267ecd5bf4ca4c1d9d4d5a14bbd130
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor11 = 10^16
    stor4 = 700000
    stor5 = 25000
    stor9 = 10
    stor8 = 5 * 10^9
    stor12 = code.data[3441 len 32]
    stor13 = code.data[3473 len 32]
    stor3 = code.data[3537 len 32] or Mask(96, 160, stor3)
    return code.data[168 len 3273]
}



// =====================  Runtime code  =====================


address nexiumAddress;
address owner;
address beyondAddress;
address bitCrystalEscrowAddress;
uint256 startingEtherValue;
uint256 stepEtherValue;
uint256 collectedEth;
uint256 nxcSold;
uint256 perStageNxc;
uint256 nxcPerBcy;
uint256 collectedBcy;
uint256 minInvest;
uint256 startDate;
uint256 endDate;
uint8 isLimitReached;
array of struct backerList;
array of struct altList;
mapping of struct sponsorList;
mapping of struct backers;

function altList(uint256 arg1) payable {
    require arg1 < altList.length
    return address(altList[arg1].field_0)
}

function startDate() payable {
    return startDate
}

function nxcPerBcy() payable {
    return nxcPerBcy
}

function backerList(uint256 arg1) payable {
    require arg1 < backerList.length
    return address(backerList[arg1].field_0)
}

function beyond() payable {
    return beyondAddress
}

function collectedBcy() payable {
    return collectedBcy
}

function isLimitReached() payable {
    return bool(isLimitReached)
}

function perStageNxc() payable {
    return perStageNxc
}

function minInvest() payable {
    return minInvest
}

function bitCrystalEscrow() payable {
    return bitCrystalEscrowAddress
}

function sponsorList(address arg1) payable {
    return sponsorList[arg1].field_0, 
           sponsorList[arg1].field_256,
           address(sponsorList[arg1].field_512),
           sponsorList[arg1].field_768,
           sponsorList[arg1].field_1024
}

function nexium() payable {
    return nexiumAddress
}

function owner() payable {
    return owner
}

function backers(address arg1) payable {
    return backers[arg1].field_0, backers[arg1].field_256
}

function endDate() payable {
    return endDate
}

function collectedEth() payable {
    return collectedEth
}

function stepEtherValue() payable {
    return stepEtherValue
}

function nxcSold() payable {
    return nxcSold
}

function startingEtherValue() payable {
    return startingEtherValue
}

function getCurrEthValue() payable {
    return (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue))
}

function withdrawEther(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require isLimitReached
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function claimNxc() payable {
    call nexiumAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, backers[address(msg.sender)].field_256
    require ext_call.success
    backers[address(msg.sender)].field_256 = 0
}

function setBCY(uint256 arg1) payable {
    require bitCrystalEscrowAddress == msg.sender
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require arg1 >= collectedBcy
    require arg1 < 714285714
    collectedBcy = arg1
}

function sub_908578e1(?) payable {
    if block.timestamp <= endDate:
    if isLimitReached:
    backers[address(msg.sender)].field_0 = 0
    call arg1 with:
       value backers[address(msg.sender)].field_0 wei
         gas 0 wei
    require ext_call.success
}

function blackBox() payable {
    require block.timestamp >= endDate + (2400 * 24 * 3600)
    call nexiumAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call nexiumAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args beyondAddress, ext_call.return_data[0]
    call beyondAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdrawNxc(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require block.timestamp >= endDate
    if not isLimitReached:
        backers[address(arg1)].field_256 += arg2
    else:
        call nexiumAddress.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2
        require ext_call.success
        if ext_call.return_data[0]:
            if backers[address(arg1)].field_256 != 0:
                call nexiumAddress.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), backers[address(arg1)].field_256
                require ext_call.success
                backers[address(arg1)].field_256 = 0
}

function addAlt(address arg1, uint256 arg2, uint256 arg3) payable {
    require owner == msg.sender
    require arg2 <= 10
    require arg3 <= 10
    require arg2 + arg3 <= 15
    create contract with 0 wei
                    code: code.data[3102 len 171], address(this.address)
    altList.length++
    if not altList.length <= altList.length + 1:
        idx = altList.length + 1
        while altList.length > idx:
            altList[idx].field_0 = 0
            idx = idx + 1
            continue 
    require altList.length < altList.length
    altList[altList.length].field_0 = Mask(96, 0, altList[altList.length].field_160)
    require altList.length - 1 < altList.length
    sponsorList[address(stor16[stor16.length].field_0)].field_0 = 0
    sponsorList[address(stor16[stor16.length].field_0)].field_256 = 0
    sponsorList[address(stor16[stor16.length].field_0)].field_512 = arg1 or Mask(96, 160, sponsorList[address(stor16[stor16.length].field_0)].field_512)
    sponsorList[address(stor16[stor16.length].field_0)].field_768 = arg2
    sponsorList[address(stor16[stor16.length].field_0)].field_1024 = arg3
}

function giveFor(address arg1) payable {
    require msg.value >= minInvest
    require endDate >= block.timestamp
    if block.timestamp >= startDate:
        nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
        if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
            isLimitReached = 1
        if not address(sponsorList[address(msg.sender)].field_512):
            if not isLimitReached:
                backers[address(arg1)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            else:
                call nexiumAddress.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(arg1)].field_256 != 0:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), backers[address(arg1)].field_256
                    require ext_call.success
                    backers[address(arg1)].field_256 = 0
                    require ext_call.return_data[0]
        else:
            sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                if not isLimitReached:
                    backers[address(stor17[address(msg.sender)].field_512)].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(sponsorList[address(msg.sender)].field_512), (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                        require ext_call.success
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
            else:
                if not isLimitReached:
                    backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                        require ext_call.success
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
            if not isLimitReached:
                backers[address(arg1)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
            else:
                call nexiumAddress.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(arg1)].field_256 != 0:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), backers[address(arg1)].field_256
                    require ext_call.success
                    backers[address(arg1)].field_256 = 0
                    require ext_call.return_data[0]
    else:
        require block.timestamp <= startDate - (24 * 3600)
        if block.timestamp >= startDate:
            nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not address(sponsorList[address(msg.sender)].field_512):
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
        else:
            nxcSold += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
            if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not address(sponsorList[address(msg.sender)].field_512):
                if not isLimitReached:
                    backers[address(arg1)].field_256 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
    if 0 == backers[address(arg1)].field_0:
        backerList.length++
        if not backerList.length <= backerList.length + 1:
            idx = backerList.length - 0x72eef71ef43483d822203fd126296c5f8bfc62fd930b15bdbf4bf082a7e537fd
            while backerList.length - 0x72eef71ef43483d822203fd126296c5f8bfc62fd930b15bdbf4bf082a7e537fe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require backerList.length < backerList.length
        backerList[backerList.length].field_0 = Mask(96, 0, backerList[backerList.length].field_160)
    backers[address(arg1)].field_0 += msg.value
    collectedEth += msg.value
    emit Gave(arg1);
}

function _fallback() payable {
    require msg.value >= minInvest
    require endDate >= block.timestamp
    if block.timestamp >= startDate:
        nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
        if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
            isLimitReached = 1
        if not address(sponsorList[address(msg.sender)].field_512):
            if not isLimitReached:
                backers[address(msg.sender)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            else:
                call nexiumAddress.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(msg.sender)].field_256 != 0:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, backers[address(msg.sender)].field_256
                    require ext_call.success
                    backers[address(msg.sender)].field_256 = 0
                    require ext_call.return_data[0]
        else:
            sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                if not isLimitReached:
                    backers[address(stor17[address(msg.sender)].field_512)].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(sponsorList[address(msg.sender)].field_512), (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                        require ext_call.success
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
            else:
                if not isLimitReached:
                    backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                        require ext_call.success
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
            if not isLimitReached:
                backers[address(msg.sender)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
            else:
                call nexiumAddress.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(msg.sender)].field_256 != 0:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, backers[address(msg.sender)].field_256
                    require ext_call.success
                    backers[address(msg.sender)].field_256 = 0
                    require ext_call.return_data[0]
    else:
        require block.timestamp <= startDate - (24 * 3600)
        if block.timestamp >= startDate:
            nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not address(sponsorList[address(msg.sender)].field_512):
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
        else:
            nxcSold += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
            if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not address(sponsorList[address(msg.sender)].field_512):
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 100 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[address(stor17[address(msg.sender)].field_512)].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[address(stor17[address(msg.sender)].field_512)].field_256
                    else:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args address(sponsorList[address(msg.sender)].field_512), (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[address(stor17[address(msg.sender)].field_512)].field_256 != 0:
                            call nexiumAddress.0xa9059cbb with:
                                 gas gas_remaining - 25050 wei
                                args address(sponsorList[address(msg.sender)].field_512), backers[address(stor17[address(msg.sender)].field_512)].field_256
                            require ext_call.success
                            backers[address(stor17[address(msg.sender)].field_512)].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                else:
                    call nexiumAddress.0xa9059cbb with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256 != 0:
                        call nexiumAddress.0xa9059cbb with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
    if 0 == backers[address(msg.sender)].field_0:
        backerList.length++
        if not backerList.length <= backerList.length + 1:
            idx = backerList.length - 0x72eef71ef43483d822203fd126296c5f8bfc62fd930b15bdbf4bf082a7e537fd
            while backerList.length - 0x72eef71ef43483d822203fd126296c5f8bfc62fd930b15bdbf4bf082a7e537fe > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require backerList.length < backerList.length
        backerList[backerList.length].field_0 = Mask(96, 0, backerList[backerList.length].field_160)
    backers[address(msg.sender)].field_0 += msg.value
    collectedEth += msg.value
    emit Gave(msg.sender);
}



}
