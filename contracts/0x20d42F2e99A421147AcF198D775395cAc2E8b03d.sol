contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor0 = 0x45e42d659d9f9466cd5df622506033145a9b89bc
    stor2 = 0x89e7a245d5267ecd5bf4ca4c1d9d4d5a14bbd130
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor11 = 10^16
    stor4 = 700000
    stor5 = 25000
    stor9 = 14
    stor8 = 5 * 10^9
    stor12 = 410559 * 3600
    stor13 = 411279 * 3600
    stor3 = 0x72037bf2a3fc312cde40c7f7cd7d2cef3ad8c193
    return code.data[184 len 3353]
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
    return altList[arg1].field_0
}

function startDate() payable {
    return startDate
}

function nxcPerBcy() payable {
    return nxcPerBcy
}

function backerList(uint256 arg1) payable {
    require arg1 < backerList.length
    return backerList[arg1].field_0
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
           sponsorList[arg1].field_512,
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

function setBCY(uint256 arg1) payable {
    require bitCrystalEscrowAddress == msg.sender
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require arg1 != 0
    require arg1 < 714285714
    collectedBcy = arg1
}

function withdrawNxc(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
}

function getBackEtherFor(address arg1) payable {
    require block.timestamp > endDate
    require not isLimitReached
    backers[address(arg1)].field_0 = 0
    call arg1 with:
       value backers[address(arg1)].field_0 wei
         gas 0 wei
    require ext_call.success
}

function getBackEther() payable {
    require block.timestamp > endDate
    require not isLimitReached
    backers[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value backers[address(msg.sender)].field_0 wei
         gas 0 wei
    require ext_call.success
}

function claimNxc() payable {
    require isLimitReached
    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, backers[address(msg.sender)].field_256
    require ext_call.success
    backers[address(msg.sender)].field_256 = 0
}

function blackBox() payable {
    require block.timestamp >= endDate + (2400 * 24 * 3600)
    call nexiumAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args beyondAddress, ext_call.return_data[0]
    call beyondAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function addAlt(address arg1, uint256 arg2, uint256 arg3) payable {
    require owner == msg.sender
    require arg2 <= 10
    require arg3 <= 10
    require arg2 + arg3 <= 15
    create contract with 0 wei
                    code: code.data[3169 len 184], address(this.address)
    altList.length++
    if not altList.length <= altList.length + 1:
        idx = altList.length + 1
        while altList.length > idx:
            altList[idx].field_0 = 0
            idx = idx + 1
            continue 
    require altList.length < altList.length
    altList[altList.length].field_0 = altList[altList.length].field_160
    require altList.length - 1 < altList.length
    sponsorList[stor16[stor16.length].field_0].field_0 = 0
    sponsorList[stor16[stor16.length].field_0].field_256 = 0
    sponsorList[stor16[stor16.length].field_0].field_512 = arg1 or Mask(96, 160, sponsorList[stor16[stor16.length].field_0].field_512)
    sponsorList[stor16[stor16.length].field_0].field_768 = arg2
    sponsorList[stor16[stor16.length].field_0].field_1024 = arg3
}

function giveFor(address arg1) payable {
    require msg.value >= minInvest
    require endDate >= block.timestamp
    if block.timestamp >= startDate:
        nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
        if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
            isLimitReached = 1
        if not sponsorList[address(msg.sender)].field_512:
            if not isLimitReached:
                backers[address(arg1)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            else:
                call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(arg1)].field_256:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), backers[address(arg1)].field_256
                    require ext_call.success
                    backers[address(arg1)].field_256 = 0
                    require ext_call.return_data[0]
        else:
            sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                if not isLimitReached:
                    backers[stor17[address(msg.sender)].field_512].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args sponsorList[address(msg.sender)].field_512, (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[stor17[address(msg.sender)].field_512].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                        require ext_call.success
                        backers[stor17[address(msg.sender)].field_512].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
            else:
                if not isLimitReached:
                    backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[stor17[address(msg.sender)].field_512].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                        require ext_call.success
                        backers[stor17[address(msg.sender)].field_512].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
            if not isLimitReached:
                backers[address(arg1)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
            else:
                call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(arg1)].field_256:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), backers[address(arg1)].field_256
                    require ext_call.success
                    backers[address(arg1)].field_256 = 0
                    require ext_call.return_data[0]
    else:
        require block.timestamp <= startDate - (3 * 3600)
        if block.timestamp >= startDate:
            nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not sponsorList[address(msg.sender)].field_512:
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
        else:
            nxcSold += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
            if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not sponsorList[address(msg.sender)].field_512:
                if not isLimitReached:
                    backers[address(arg1)].field_256 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(arg1)].field_256 += (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(arg1)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args address(arg1), backers[address(arg1)].field_256
                        require ext_call.success
                        backers[address(arg1)].field_256 = 0
                        require ext_call.return_data[0]
    if 0 == backers[address(arg1)].field_0:
        backerList.length++
        if not backerList.length <= backerList.length + 1:
            idx = backerList.length + 1
            while backerList.length > idx:
                backerList[idx].field_0 = 0
                idx = idx + 1
                continue 
        require backerList.length < backerList.length
        backerList[backerList.length].field_0 = backerList[backerList.length].field_160
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
        if not sponsorList[address(msg.sender)].field_512:
            if not isLimitReached:
                backers[address(msg.sender)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            else:
                call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(msg.sender)].field_256:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, backers[address(msg.sender)].field_256
                    require ext_call.success
                    backers[address(msg.sender)].field_256 = 0
                    require ext_call.return_data[0]
        else:
            sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                if not isLimitReached:
                    backers[stor17[address(msg.sender)].field_512].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args sponsorList[address(msg.sender)].field_512, (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[stor17[address(msg.sender)].field_512].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                        require ext_call.success
                        backers[stor17[address(msg.sender)].field_512].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
            else:
                if not isLimitReached:
                    backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[stor17[address(msg.sender)].field_512].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                        require ext_call.success
                        backers[stor17[address(msg.sender)].field_512].field_256 = 0
                        require ext_call.return_data[0]
                sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
            if not isLimitReached:
                backers[address(msg.sender)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
            else:
                call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                require ext_call.success
                require ext_call.return_data[0]
                if backers[address(msg.sender)].field_256:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, backers[address(msg.sender)].field_256
                    require ext_call.success
                    backers[address(msg.sender)].field_256 = 0
                    require ext_call.return_data[0]
    else:
        require block.timestamp <= startDate - (3 * 3600)
        if block.timestamp >= startDate:
            nxcSold += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
            if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not sponsorList[address(msg.sender)].field_512:
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18
                if ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = ((startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (100 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) + (sponsorList[address(msg.sender)].field_1024 * (startingEtherValue * msg.value) - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue * msg.value) / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
        else:
            nxcSold += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
            if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + nxcSold >= perStageNxc:
                isLimitReached = 1
            if not sponsorList[address(msg.sender)].field_512:
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
            else:
                sponsorList[address(msg.sender)].field_0 += startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18
                if (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 <= sponsorList[address(msg.sender)].field_768:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, ((startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = (startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + sponsorList[address(msg.sender)].field_0 / 80 * 10^6 * sponsorList[address(msg.sender)].field_0 / 100
                else:
                    if not isLimitReached:
                        backers[stor17[address(msg.sender)].field_512].field_256 = (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256 + backers[stor17[address(msg.sender)].field_512].field_256
                    else:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args sponsorList[address(msg.sender)].field_512, (sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100) - sponsorList[address(msg.sender)].field_256
                        require ext_call.success
                        require ext_call.return_data[0]
                        if backers[stor17[address(msg.sender)].field_512].field_256:
                            call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 25050 wei
                                args sponsorList[address(msg.sender)].field_512, backers[stor17[address(msg.sender)].field_512].field_256
                            require ext_call.success
                            backers[stor17[address(msg.sender)].field_512].field_256 = 0
                            require ext_call.return_data[0]
                    sponsorList[address(msg.sender)].field_256 = sponsorList[address(msg.sender)].field_768 * sponsorList[address(msg.sender)].field_0 / 100
                if not isLimitReached:
                    backers[address(msg.sender)].field_256 += (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                else:
                    call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args msg.sender, (100 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) + (sponsorList[address(msg.sender)].field_1024 * startingEtherValue - ((nxcPerBcy * collectedBcy) + nxcSold / perStageNxc * stepEtherValue) / 10 * msg.value / 10^18) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    if backers[address(msg.sender)].field_256:
                        call nexiumAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining - 25050 wei
                            args msg.sender, backers[address(msg.sender)].field_256
                        require ext_call.success
                        backers[address(msg.sender)].field_256 = 0
                        require ext_call.return_data[0]
    if 0 == backers[address(msg.sender)].field_0:
        backerList.length++
        if not backerList.length <= backerList.length + 1:
            idx = backerList.length + 1
            while backerList.length > idx:
                backerList[idx].field_0 = 0
                idx = idx + 1
                continue 
        require backerList.length < backerList.length
        backerList[backerList.length].field_0 = backerList[backerList.length].field_160
    backers[address(msg.sender)].field_0 += msg.value
    collectedEth += msg.value
    emit Gave(msg.sender);
}



}
