contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 shareholders;
mapping of uint256 stor5;
mapping of address holderAt;
address complianceAddress;
uint8 stor8; offset 160
uint32 stor8;
address issuerAddress;
mapping of address cancellations;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function issuer() payable {
    return issuerAddress
}

function isSuperseded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(cancellations[address(arg1)])
}

function decimals() payable {
    return decimals
}

function cancellations(address arg1) payable {
    require calldata.size - 4 >= 32
    return cancellations[arg1]
}

function shareholders() payable {
    return shareholders
}

function issuingFinished() payable {
    return bool(uint8(stor8.field_160))
}

function compliance() payable {
    return complianceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function holderAt(int256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 0:
        revert with 0, 'Index outside of bounds.'
    if arg1 >= shareholders:
        revert with 0, 'Index outside of bounds.'
    return holderAt[arg1 + 1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isLocked() payable {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Owner account is required'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function isHolder(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5[address(arg1)] - 1 < 0:
        return not stor5[address(arg1)] - 1 < 0
    return (stor5[address(arg1)] - 1 < shareholders)
}

function getSuperseded(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Non-zero address required'
    if cancellations[address(arg1)]:
        return cancellations[address(arg1)]
    else:
        return 0
}

function setCompliance(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if owner != msg.sender:
        revert with 0, 'Owner account is required'
    complianceAddress = arg1
}

function setLocked(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner account is required'
    if arg1 == bool(uint8(stor0.field_160)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x72436f6e747261637420616c726561647920696e20726571756573746564206c6f636b2073746174,
                    mem[204 len 24]
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function setIssuer(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if owner != msg.sender:
        revert with 0, 'Owner account is required'
    issuerAddress = arg1
    emit IssuerSet(arg1, arg1);
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owner account is required'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x724e6577204f776e65722063616e6e6f74206265207468652063757272656e74206f776e65,
                    mem[201 len 27]
    if not arg1:
        revert with 0, 'New Owner cannot be zero address'
    owner = arg1
    emit OwnerTransferred(owner, arg1);
}

function finishIssuing() payable {
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if issuerAddress != msg.sender:
        revert with 0, 'Only issuer allowed'
    if uint8(stor8.field_160):
        revert with 0, 'Issuing is already finished'
    uint8(stor8.field_160) = 1
    emit IssueFinished()
    return bool(uint8(stor8.field_160))
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if cancellations[msg.sender]:
        revert with 0, 'Address has been cancelled'
    if stor5[address(msg.sender)] - 1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734d7573742062652061207368617265686f6c64657220746f20617070726f766520746f6b656e207472616e736665,
                    mem[211 len 17]
    if stor5[address(msg.sender)] - 1 >= shareholders:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734d7573742062652061207368617265686f6c64657220746f20617070726f766520746f6b656e207472616e736665,
                    mem[211 len 17]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if issuerAddress != msg.sender:
        revert with 0, 'Only issuer allowed'
    if uint8(stor8.field_160):
        revert with 0, 'Issuing is already finished'
    if arg1 > 0:
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'Results in overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
            revert with 0, 'Results in overflow'
        balanceOf[address(stor8.field_0)] += arg1
        if issuerAddress:
            if stor5[address(stor8.field_0)] - 1 < 0:
                shareholders++
                stor5[address(stor8.field_0)] = shareholders + 1
                holderAt[stor4 + 1] = issuerAddress
            else:
                if stor5[address(stor8.field_0)] - 1 >= shareholders:
                    shareholders++
                    stor5[address(stor8.field_0)] = shareholders + 1
                    holderAt[stor4 + 1] = issuerAddress
    emit Issue(arg1, issuerAddress);
    emit Transfer(arg1, 0, issuerAddress);
    return 1
}

function cancelAndReissue(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if issuerAddress != msg.sender:
        revert with 0, 'Only issuer allowed'
    if cancellations[address(arg2)]:
        revert with 0, 'Address has been cancelled'
    if stor5[address(arg1)] - 1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe4f726967696e616c20646f65736e2774206578697374206f72207265706c6163656d656e7420646f65,
                    mem[206 len 22]
    if stor5[address(arg1)] - 1 >= shareholders:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe4f726967696e616c20646f65736e2774206578697374206f72207265706c6163656d656e7420646f65,
                    mem[206 len 22]
    if stor5[address(arg2)] - 1 >= 0:
        if stor5[address(arg2)] - 1 < shareholders:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe4f726967696e616c20646f65736e2774206578697374206f72207265706c6163656d656e7420646f65,
                        mem[206 len 22]
    if complianceAddress:
        require ext_code.size(complianceAddress)
        call complianceAddress.canIssue(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed 'canIssue' check.'
    if stor5[address(arg1)] < 1:
        if arg2:
            if stor5[address(arg2)] - 1 < 0:
                shareholders++
                stor5[address(arg2)] = shareholders + 1
                holderAt[stor4 + 1] = arg2
            else:
                if stor5[address(arg2)] - 1 >= shareholders:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
    else:
        if stor5[address(arg1)] > shareholders:
            if arg2:
                if stor5[address(arg2)] - 1 < 0:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
                else:
                    if stor5[address(arg2)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg2)] = shareholders + 1
                        holderAt[stor4 + 1] = arg2
        else:
            if stor5[address(arg1)] >= shareholders:
                holderAt[stor5[address(arg1)]] = 0
            else:
                stor5[stor6[stor4]] = stor5[address(arg1)]
                holderAt[stor5[address(arg1)]] = holderAt[stor4]
                holderAt[stor4] = 0
            stor5[address(arg1)] = 0
            shareholders--
            if arg2:
                if stor5[address(arg2)] - 1 < 0:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
                else:
                    if stor5[address(arg2)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg2)] = shareholders + 1
                        holderAt[stor4 + 1] = arg2
    cancellations[address(arg1)] = arg2
    balanceOf[arg2] = balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit VerifiedAddressSuperseded(arg1, arg2, msg.sender);
}

function transferOverride(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if cancellations[address(arg2)]:
        revert with 0, 'Address has been cancelled'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Insufficient funds'
    if cancellations[address(arg2)]:
        revert with 0, 'Address has been cancelled'
    if not complianceAddress:
        return 0
    require ext_code.size(complianceAddress)
    call complianceAddress.canOverride(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'Results in underflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'Results in overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if balanceOf[address(arg2)] <= 0:
            if not balanceOf[address(arg1)]:
                if stor5[address(arg1)] >= 1:
                    if stor5[address(arg1)] <= shareholders:
                        if stor5[address(arg1)] >= shareholders:
                            holderAt[stor5[address(arg1)]] = 0
                        else:
                            stor5[stor6[stor4]] = stor5[address(arg1)]
                            holderAt[stor5[address(arg1)]] = holderAt[stor4]
                            holderAt[stor4] = 0
                        stor5[address(arg1)] = 0
                        shareholders--
                        emit ShareholderRemoved(arg1);
        else:
            if not arg2:
                if not balanceOf[address(arg1)]:
                    if stor5[address(arg1)] >= 1:
                        if stor5[address(arg1)] <= shareholders:
                            if stor5[address(arg1)] >= shareholders:
                                holderAt[stor5[address(arg1)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(arg1)]
                                holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(arg1)] = 0
                            shareholders--
                            emit ShareholderRemoved(arg1);
            else:
                if stor5[address(arg2)] - 1 < 0:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
                    emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
                else:
                    if stor5[address(arg2)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg2)] = shareholders + 1
                        holderAt[stor4 + 1] = arg2
                        emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if cancellations[address(arg2)]:
        revert with 0, 'Address has been cancelled'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Insufficient funds'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Transfer exceeds allowance'
    if cancellations[address(arg2)]:
        revert with 0, 'Address has been cancelled'
    if not complianceAddress:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'Results in underflow'
        allowance[address(arg1)][msg.sender] -= arg3
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'Results in underflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'Results in overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if balanceOf[address(arg2)] <= 0:
            if not balanceOf[address(arg1)]:
                if stor5[address(arg1)] >= 1:
                    if stor5[address(arg1)] <= shareholders:
                        if stor5[address(arg1)] >= shareholders:
                            holderAt[stor5[address(arg1)]] = 0
                        else:
                            stor5[stor6[stor4]] = stor5[address(arg1)]
                            holderAt[stor5[address(arg1)]] = holderAt[stor4]
                            holderAt[stor4] = 0
                        stor5[address(arg1)] = 0
                        shareholders--
                        emit ShareholderRemoved(arg1);
        else:
            if not arg2:
                if not balanceOf[address(arg1)]:
                    if stor5[address(arg1)] >= 1:
                        if stor5[address(arg1)] <= shareholders:
                            if stor5[address(arg1)] >= shareholders:
                                holderAt[stor5[address(arg1)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(arg1)]
                                holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(arg1)] = 0
                            shareholders--
                            emit ShareholderRemoved(arg1);
            else:
                if stor5[address(arg2)] - 1 < 0:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
                    emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
                else:
                    if stor5[address(arg2)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg2)] = shareholders + 1
                        holderAt[stor4 + 1] = arg2
                        emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
        return 1
    require ext_code.size(complianceAddress)
    call complianceAddress.canTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'Results in underflow'
        allowance[address(arg1)][msg.sender] -= arg3
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'Results in underflow'
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'Results in overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if balanceOf[address(arg2)] <= 0:
            if not balanceOf[address(arg1)]:
                if stor5[address(arg1)] >= 1:
                    if stor5[address(arg1)] <= shareholders:
                        if stor5[address(arg1)] >= shareholders:
                            holderAt[stor5[address(arg1)]] = 0
                        else:
                            stor5[stor6[stor4]] = stor5[address(arg1)]
                            holderAt[stor5[address(arg1)]] = holderAt[stor4]
                            holderAt[stor4] = 0
                        stor5[address(arg1)] = 0
                        shareholders--
                        emit ShareholderRemoved(arg1);
        else:
            if not arg2:
                if not balanceOf[address(arg1)]:
                    if stor5[address(arg1)] >= 1:
                        if stor5[address(arg1)] <= shareholders:
                            if stor5[address(arg1)] >= shareholders:
                                holderAt[stor5[address(arg1)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(arg1)]
                                holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(arg1)] = 0
                            shareholders--
                            emit ShareholderRemoved(arg1);
            else:
                if stor5[address(arg2)] - 1 < 0:
                    shareholders++
                    stor5[address(arg2)] = shareholders + 1
                    holderAt[stor4 + 1] = arg2
                    emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
                else:
                    if stor5[address(arg2)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg2)] = shareholders + 1
                        holderAt[stor4 + 1] = arg2
                        emit ShareholderAdded(arg2);
                    if not balanceOf[address(arg1)]:
                        if stor5[address(arg1)] >= 1:
                            if stor5[address(arg1)] <= shareholders:
                                if stor5[address(arg1)] >= shareholders:
                                    holderAt[stor5[address(arg1)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(arg1)]
                                    holderAt[stor5[address(arg1)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(arg1)] = 0
                                shareholders--
                                emit ShareholderRemoved(arg1);
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x65436f6e74726163742069732063757272656e746c79206c6f636b656420666f72206d6f64696669636174696f,
                    mem[209 len 19]
    if cancellations[address(arg1)]:
        revert with 0, 'Address has been cancelled'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'Insufficient funds'
    if msg.sender == issuerAddress:
        if not complianceAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Results in underflow'
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'Results in overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            if balanceOf[address(arg1)] <= 0:
                if not balanceOf[address(msg.sender)]:
                    if stor5[address(msg.sender)] >= 1:
                        if stor5[address(msg.sender)] <= shareholders:
                            if stor5[address(msg.sender)] >= shareholders:
                                holderAt[stor5[address(msg.sender)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(msg.sender)] = 0
                            shareholders--
                            emit ShareholderRemoved(msg.sender);
            else:
                if not arg1:
                    if not balanceOf[address(msg.sender)]:
                        if stor5[address(msg.sender)] >= 1:
                            if stor5[address(msg.sender)] <= shareholders:
                                if stor5[address(msg.sender)] >= shareholders:
                                    holderAt[stor5[address(msg.sender)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                    holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(msg.sender)] = 0
                                shareholders--
                                emit ShareholderRemoved(msg.sender);
                else:
                    if stor5[address(arg1)] - 1 < 0:
                        shareholders++
                        stor5[address(arg1)] = shareholders + 1
                        holderAt[stor4 + 1] = arg1
                        emit ShareholderAdded(arg1);
                        if not balanceOf[address(msg.sender)]:
                            if stor5[address(msg.sender)] >= 1:
                                if stor5[address(msg.sender)] <= shareholders:
                                    if stor5[address(msg.sender)] >= shareholders:
                                        holderAt[stor5[address(msg.sender)]] = 0
                                    else:
                                        stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                        holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                        holderAt[stor4] = 0
                                    stor5[address(msg.sender)] = 0
                                    shareholders--
                                    emit ShareholderRemoved(msg.sender);
                    else:
                        if stor5[address(arg1)] - 1 >= shareholders:
                            shareholders++
                            stor5[address(arg1)] = shareholders + 1
                            holderAt[stor4 + 1] = arg1
                            emit ShareholderAdded(arg1);
                        if not balanceOf[address(msg.sender)]:
                            if stor5[address(msg.sender)] >= 1:
                                if stor5[address(msg.sender)] <= shareholders:
                                    if stor5[address(msg.sender)] >= shareholders:
                                        holderAt[stor5[address(msg.sender)]] = 0
                                    else:
                                        stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                        holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                        holderAt[stor4] = 0
                                    stor5[address(msg.sender)] = 0
                                    shareholders--
                                    emit ShareholderRemoved(msg.sender);
            return not bool(complianceAddress)
        require ext_code.size(complianceAddress)
        call complianceAddress.canIssue(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor8.field_0), issuerAddress, address(arg1), arg2
    else:
        if cancellations[address(arg1)]:
            revert with 0, 'Address has been cancelled'
        if not complianceAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Results in underflow'
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'Results in overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            if balanceOf[address(arg1)] <= 0:
                if not balanceOf[address(msg.sender)]:
                    if stor5[address(msg.sender)] >= 1:
                        if stor5[address(msg.sender)] <= shareholders:
                            if stor5[address(msg.sender)] >= shareholders:
                                holderAt[stor5[address(msg.sender)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(msg.sender)] = 0
                            shareholders--
                            emit ShareholderRemoved(msg.sender);
            else:
                if not arg1:
                    if not balanceOf[address(msg.sender)]:
                        if stor5[address(msg.sender)] >= 1:
                            if stor5[address(msg.sender)] <= shareholders:
                                if stor5[address(msg.sender)] >= shareholders:
                                    holderAt[stor5[address(msg.sender)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                    holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(msg.sender)] = 0
                                shareholders--
                                emit ShareholderRemoved(msg.sender);
                else:
                    if stor5[address(arg1)] - 1 < 0:
                        shareholders++
                        stor5[address(arg1)] = shareholders + 1
                        holderAt[stor4 + 1] = arg1
                        emit ShareholderAdded(arg1);
                        if not balanceOf[address(msg.sender)]:
                            if stor5[address(msg.sender)] >= 1:
                                if stor5[address(msg.sender)] <= shareholders:
                                    if stor5[address(msg.sender)] >= shareholders:
                                        holderAt[stor5[address(msg.sender)]] = 0
                                    else:
                                        stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                        holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                        holderAt[stor4] = 0
                                    stor5[address(msg.sender)] = 0
                                    shareholders--
                                    emit ShareholderRemoved(msg.sender);
                    else:
                        if stor5[address(arg1)] - 1 >= shareholders:
                            shareholders++
                            stor5[address(arg1)] = shareholders + 1
                            holderAt[stor4 + 1] = arg1
                            emit ShareholderAdded(arg1);
                        if not balanceOf[address(msg.sender)]:
                            if stor5[address(msg.sender)] >= 1:
                                if stor5[address(msg.sender)] <= shareholders:
                                    if stor5[address(msg.sender)] >= shareholders:
                                        holderAt[stor5[address(msg.sender)]] = 0
                                    else:
                                        stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                        holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                        holderAt[stor4] = 0
                                    stor5[address(msg.sender)] = 0
                                    shareholders--
                                    emit ShareholderRemoved(msg.sender);
            return 1
        require ext_code.size(complianceAddress)
        call complianceAddress.canTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Results in underflow'
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'Results in overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        if balanceOf[address(arg1)] <= 0:
            if not balanceOf[address(msg.sender)]:
                if stor5[address(msg.sender)] >= 1:
                    if stor5[address(msg.sender)] <= shareholders:
                        if stor5[address(msg.sender)] >= shareholders:
                            holderAt[stor5[address(msg.sender)]] = 0
                        else:
                            stor5[stor6[stor4]] = stor5[address(msg.sender)]
                            holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                            holderAt[stor4] = 0
                        stor5[address(msg.sender)] = 0
                        shareholders--
                        emit ShareholderRemoved(msg.sender);
        else:
            if not arg1:
                if not balanceOf[address(msg.sender)]:
                    if stor5[address(msg.sender)] >= 1:
                        if stor5[address(msg.sender)] <= shareholders:
                            if stor5[address(msg.sender)] >= shareholders:
                                holderAt[stor5[address(msg.sender)]] = 0
                            else:
                                stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                holderAt[stor4] = 0
                            stor5[address(msg.sender)] = 0
                            shareholders--
                            emit ShareholderRemoved(msg.sender);
            else:
                if stor5[address(arg1)] - 1 < 0:
                    shareholders++
                    stor5[address(arg1)] = shareholders + 1
                    holderAt[stor4 + 1] = arg1
                    emit ShareholderAdded(arg1);
                    if not balanceOf[address(msg.sender)]:
                        if stor5[address(msg.sender)] >= 1:
                            if stor5[address(msg.sender)] <= shareholders:
                                if stor5[address(msg.sender)] >= shareholders:
                                    holderAt[stor5[address(msg.sender)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                    holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(msg.sender)] = 0
                                shareholders--
                                emit ShareholderRemoved(msg.sender);
                else:
                    if stor5[address(arg1)] - 1 >= shareholders:
                        shareholders++
                        stor5[address(arg1)] = shareholders + 1
                        holderAt[stor4 + 1] = arg1
                        emit ShareholderAdded(arg1);
                    if not balanceOf[address(msg.sender)]:
                        if stor5[address(msg.sender)] >= 1:
                            if stor5[address(msg.sender)] <= shareholders:
                                if stor5[address(msg.sender)] >= shareholders:
                                    holderAt[stor5[address(msg.sender)]] = 0
                                else:
                                    stor5[stor6[stor4]] = stor5[address(msg.sender)]
                                    holderAt[stor5[address(msg.sender)]] = holderAt[stor4]
                                    holderAt[stor4] = 0
                                stor5[address(msg.sender)] = 0
                                shareholders--
                                emit ShareholderRemoved(msg.sender);
    return bool(ext_call.return_data[0])
}



}
