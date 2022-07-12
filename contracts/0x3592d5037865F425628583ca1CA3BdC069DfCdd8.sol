contract main {




// =====================  Runtime code  =====================


const name = 'TrueAUD'

const rounding = 2

const decimals = 18

const paused = 0

const symbol = 'TAUD'


array of uint256 stor-4;
array of uint256 stor-3;
array of uint256 stor-2;
array of uint256 stor-1;
address owner;
uint8 stor1; offset 160
address pendingOwner;
uint256 totalSupply;
uint256 burnMin;
uint256 burnMax;
address registryAddress;
uint256 sub_3db6b7ff;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor16;
address stor17;
array of uint256 stor1048574;
array of uint256 stor1048575;
array of uint256 sub_ef286e96;
array of uint256 stor1048577;
array of uint256 stor1048578;
array of uint256 stor1048579;
array of uint256 stor1048580;
array of uint256 stor1048581;
array of uint256 stor1048582;
array of uint256 stor1048583;
array of uint256 stor1048584;
mapping of address stor54852977709204604563022964596201859853585620798550020111741397978843125210850;
mapping of uint256 stor56694155776633620618123775333774664232205117733666233818158844081279237660069;
mapping of uint256 stor114218821585888182380480394527967200304490344533734528688368251335489398323185;

function burnMin() {
    return burnMin
}

function totalSupply() {
    return totalSupply
}

function sub_3db6b7ff(?) {
    return sub_3db6b7ff
}

function burnMax() {
    return burnMax
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function registry() {
    return registryAddress
}

function remainingGasRefundPool() {
    return storFFFF.length
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function sub_ef286e96(?) {
    return sub_ef286e96[arg1]
}

function _fallback() payable {
    revert
}

function sub_b64151b9(?) {
    stor17 = arg1
}

function sub_57e1ba4f(?) {
    return (storFFFF[storFFFF.length] + 1)
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    pendingOwner = arg1
}

function syncAttributeValue(address arg1, bytes32 arg2, uint256 arg3) {
    require registryAddress == msg.sender
    stor16[arg2][address(arg1)] = arg3
}

function setTotalSupply(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require not totalSupply
    totalSupply = arg1
}

function setRegistry(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    registryAddress = arg1
    emit SetRegistry(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function initialize() {
    if stor1:
        revert with 0, 'already initialized'
    stor1 = 1
    owner = 0xcdbd95534b5a980f33d1acdee4db7cc1eb8a31de
    burnMin = 1000 * 10^18
    burnMax = 20000000 * 10^18
}

function setBurnBounds(uint256 arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    if arg1 > arg2:
        revert with 0, 'min > max'
    burnMin = arg1
    burnMax = arg2
    emit SetBurnBounds(arg1, arg2);
}

function reclaimEther(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimContract(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
        emit Approval(0, msg.sender, arg1);
    return 1
}

function sub_1e1256c3(?) {
    require ext_code.size(registryAddress)
    call registryAddress.hasAttribute(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args msg.sender, 'canSetFutureRefundMinGasPrice'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_3db6b7ff = arg1
}

function wipeBlacklistedAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    if not stor7D57[address(arg1)]:
        revert with 0, '_account is not blacklisted'
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit WipeBlacklistedAccount(balanceOf[address(arg1)], arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function sponsorGas() {
    require sub_3db6b7ff > 0
    storFFFF.length += 9
    sub_ef286e96[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
    stor1000[storFFFF.length] = sub_3db6b7ff
}

function reclaimToken(address arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c4334ebe(?) {
    create contract with 0 wei
                    code: 0x601f8060093d393df33d33730000000000000000000000000000000000000000 or this.address, 1468205740186229759
    stor-2[stor-1.length] = create.new_address
    create contract with 0 wei
                    code: 0x601f8060093d393df33d33730000000000000000000000000000000000000000 or this.address, 1468205740186229759
    stor-3[stor-1.length] = create.new_address
    create contract with 0 wei
                    code: 0x601f8060093d393df33d33730000000000000000000000000000000000000000 or this.address, 1468205740186229759
    stor-4[stor-1.length] = create.new_address
    stor-1.length += 3
}

function burn(uint256 arg1) {
    if stor7D57[address(msg.sender)]:
        revert with 0, 'blacklisted'
    if not stor16['canBurnAUD'][address(msg.sender)]:
        revert with 0, 'cannot burn from this address'
    if arg1 - (arg1 % 10^16) < burnMin:
        revert with 0, 'below min burn bound'
    if arg1 - (arg1 % 10^16) > burnMax:
        revert with 0, 'exceeds max burn bound'
    require arg1 - (arg1 % 10^16) <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg1 + (arg1 % 10^16)
    require arg1 - (arg1 % 10^16) <= totalSupply
    totalSupply = totalSupply - arg1 + (arg1 % 10^16)
    emit Burn((arg1 - (arg1 % 10^16)), msg.sender);
    emit Transfer((arg1 - (arg1 % 10^16)), msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'only Owner'
    if not arg1:
        revert with 0, 'to address cannot be zero'
    if not uint256(stor7945[Mask(140, 20, arg1) << 96]):
        if stor7D57[address(arg1)]:
            revert with 0, 'blacklisted'
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        emit Mint(arg2, arg1);
        emit Transfer(arg2, 0, arg1);
        if arg1 != arg1:
            emit Transfer(arg2, arg1, arg1);
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if storFC85[address(arg1)]:
            require ext_code.size(arg1)
            if arg1 == arg1:
                call arg1.tokenFallback(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, arg2
            else:
                call arg1.tokenFallback(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor7D57[address(stor7945[Mask(140, 20, arg1) << 96])]:
            revert with 0, 'blacklisted'
        require arg2 + totalSupply >= totalSupply
        totalSupply += arg2
        emit Mint(arg2, arg1);
        emit Transfer(arg2, 0, arg1);
        if arg1 != address(stor7945[Mask(140, 20, arg1) << 96]):
            emit Transfer(arg2, arg1, address(stor7945[Mask(140, 20, arg1) << 96]));
        require arg2 + balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])] >= balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])]
        balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])] += arg2
        if storFC85[address(stor7945[Mask(140, 20, arg1) << 96])]:
            require ext_code.size(address(stor7945[Mask(140, 20, arg1) << 96]))
            if arg1 == address(stor7945[Mask(140, 20, arg1) << 96]):
                call address(stor7945[Mask(140, 20, arg1) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, arg2
            else:
                call address(stor7945[Mask(140, 20, arg1) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if arg1 < 1048576:
        if not uint256(stor7945[Mask(140, 20, arg1) << 96]):
            if stor7D57[address(arg1)]:
                revert with 0, 'blacklisted'
        else:
            if stor7D57[address(stor7945[Mask(140, 20, arg1) << 96])]:
                revert with 0, 'blacklisted'
        if stor7D57[address(msg.sender)]:
            revert with 0, 'blacklisted'
        if not stor16['canBurnAUD'][address(arg1)]:
            revert with 0, 'cannot burn from this address'
        if arg2 - (arg2 % 10^16) < burnMin:
            revert with 0, 'below min burn bound'
        if arg2 - (arg2 % 10^16) > burnMax:
            revert with 0, 'exceeds max burn bound'
        require arg2 - (arg2 % 10^16) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 % 10^16)
        if not balanceOf[address(msg.sender)] - arg2 + (arg2 % 10^16):
            if storFFFF.length > 1:
                if block.gasprice > storFFFF[storFFFF.length]:
                    storFFFF[storFFFF.length] = 0
                    storFFFF.length--
        else:
            if storFFFF.length > 1:
                if block.gasprice > storFFFF[storFFFF.length]:
                    storFFFF[storFFFF.length] = 0
                    storFFFF[storFFFF.length] = 0
                    storFFFF.length -= 2
        emit Transfer((arg2 - (arg2 % 10^16)), msg.sender, arg1);
        require arg2 - (arg2 % 10^16) <= totalSupply
        totalSupply = totalSupply - arg2 + (arg2 % 10^16)
        emit Burn((arg2 - (arg2 % 10^16)), arg1);
        emit Transfer((arg2 - (arg2 % 10^16)), arg1, 0);
    else:
        if not uint256(stor7945[Mask(140, 20, arg1) << 96]):
            if stor7D57[address(arg1)]:
                revert with 0, 'blacklisted'
            if stor7D57[address(msg.sender)]:
                revert with 0, 'blacklisted'
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            if balanceOf[address(msg.sender)] - arg2:
                if not balanceOf[address(arg1)]:
                    if stor-1.length > 0:
                        stor-1.length--
                        call stor-1[stor-1.length] with:
                             gas gas_remaining wei
                        stor-1[stor-1.length] = 0
                else:
                    if storFFFF.length > 1:
                        if block.gasprice > storFFFF[storFFFF.length]:
                            storFFFF[storFFFF.length] = 0
                            storFFFF[storFFFF.length] = 0
                            storFFFF.length -= 2
            else:
                if not balanceOf[address(arg1)]:
                    if storFFFF.length > 1:
                        if block.gasprice > storFFFF[storFFFF.length]:
                            storFFFF[storFFFF.length] = 0
                            storFFFF[storFFFF.length] = 0
                            storFFFF.length -= 2
            emit Transfer(arg2, msg.sender, arg1);
            if arg1 == arg1:
                if storFC85[address(arg1)]:
                    require ext_code.size(arg1)
                    call arg1.tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                emit Transfer(arg2, arg1, arg1);
                if storFC85[address(arg1)]:
                    require ext_code.size(arg1)
                    call arg1.tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor7D57[address(stor7945[Mask(140, 20, arg1) << 96])]:
                revert with 0, 'blacklisted'
            if stor7D57[address(msg.sender)]:
                revert with 0, 'blacklisted'
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])] >= balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])]
            balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])] += arg2
            if balanceOf[address(msg.sender)] - arg2:
                if not balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])]:
                    if stor-1.length > 0:
                        stor-1.length--
                        call stor-1[stor-1.length] with:
                             gas gas_remaining wei
                        stor-1[stor-1.length] = 0
                else:
                    if storFFFF.length > 1:
                        if block.gasprice > storFFFF[storFFFF.length]:
                            storFFFF[storFFFF.length] = 0
                            storFFFF[storFFFF.length] = 0
                            storFFFF.length -= 2
            else:
                if not balanceOf[address(stor7945[Mask(140, 20, arg1) << 96])]:
                    if storFFFF.length > 1:
                        if block.gasprice > storFFFF[storFFFF.length]:
                            storFFFF[storFFFF.length] = 0
                            storFFFF[storFFFF.length] = 0
                            storFFFF.length -= 2
            emit Transfer(arg2, msg.sender, arg1);
            if arg1 == address(stor7945[Mask(140, 20, arg1) << 96]):
                if storFC85[address(stor7945[Mask(140, 20, arg1) << 96])]:
                    require ext_code.size(address(stor7945[Mask(140, 20, arg1) << 96]))
                    call address(stor7945[Mask(140, 20, arg1) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                emit Transfer(arg2, arg1, address(stor7945[Mask(140, 20, arg1) << 96]));
                if storFC85[address(stor7945[Mask(140, 20, arg1) << 96])]:
                    require ext_code.size(address(stor7945[Mask(140, 20, arg1) << 96]))
                    call address(stor7945[Mask(140, 20, arg1) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor7D57[address(msg.sender)]:
        revert with 0, 'blacklisted'
    if arg2 < 1048576:
        if not uint256(stor7945[Mask(140, 20, arg2) << 96]):
            if stor7D57[address(arg2)]:
                revert with 0, 'blacklisted'
        else:
            if stor7D57[address(stor7945[Mask(140, 20, arg2) << 96])]:
                revert with 0, 'blacklisted'
        if stor7D57[address(arg1)]:
            revert with 0, 'blacklisted'
        if not stor16['canBurnAUD'][address(arg2)]:
            revert with 0, 'cannot burn from this address'
        if arg3 - (arg3 % 10^16) < burnMin:
            revert with 0, 'below min burn bound'
        if arg3 - (arg3 % 10^16) > burnMax:
            revert with 0, 'exceeds max burn bound'
        require arg3 - (arg3 % 10^16) <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 % 10^16)
        require arg3 - (arg3 % 10^16) <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 % 10^16)
        if balanceOf[address(arg1)] - arg3 + (arg3 % 10^16):
            if allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 % 10^16):
                if stor-1.length > 0:
                    stor-1.length--
                    call stor-1[stor-1.length] with:
                         gas gas_remaining wei
                    stor-1[stor-1.length] = 0
            else:
                if storFFFF.length > 1:
                    if block.gasprice > storFFFF[storFFFF.length]:
                        storFFFF[storFFFF.length] = 0
                        storFFFF.length--
        else:
            if allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 % 10^16):
                if storFFFF.length > 1:
                    if block.gasprice > storFFFF[storFFFF.length]:
                        storFFFF[storFFFF.length] = 0
                        storFFFF.length--
        emit Transfer((arg3 - (arg3 % 10^16)), arg1, arg2);
        require arg3 - (arg3 % 10^16) <= totalSupply
        totalSupply = totalSupply - arg3 + (arg3 % 10^16)
        emit Burn((arg3 - (arg3 % 10^16)), arg2);
        emit Transfer((arg3 - (arg3 % 10^16)), arg2, 0);
    else:
        if not uint256(stor7945[Mask(140, 20, arg2) << 96]):
            if stor7D57[address(arg2)]:
                revert with 0, 'blacklisted'
            if stor7D57[address(arg1)]:
                revert with 0, 'blacklisted'
            require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)]:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    if balanceOf[address(arg1)] - arg3:
                        if stor-1.length > 0:
                            stor-1.length--
                            call stor-1[stor-1.length] with:
                                 gas gas_remaining wei
                            stor-1[stor-1.length] = 0
                    else:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length--
                else:
                    if balanceOf[address(arg1)] - arg3:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length--
            else:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    if balanceOf[address(arg1)] - arg3:
                        if stor-1.length > 0:
                            stor-1.length--
                            call stor-1[stor-1.length] with:
                                 gas gas_remaining wei
                            stor-1[stor-1.length] = 0
                    else:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length -= 2
                else:
                    if balanceOf[address(arg1)] - arg3:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length -= 2
            emit Transfer(arg3, arg1, arg2);
            if arg2 == arg2:
                if storFC85[address(arg2)]:
                    require ext_code.size(arg2)
                    call arg2.tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                emit Transfer(arg3, arg2, arg2);
                if storFC85[address(arg2)]:
                    require ext_code.size(arg2)
                    call arg2.tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor7D57[address(stor7945[Mask(140, 20, arg2) << 96])]:
                revert with 0, 'blacklisted'
            if stor7D57[address(arg1)]:
                revert with 0, 'blacklisted'
            require arg3 + balanceOf[address(stor7945[Mask(140, 20, arg2) << 96])] >= balanceOf[address(stor7945[Mask(140, 20, arg2) << 96])]
            balanceOf[address(stor7945[Mask(140, 20, arg2) << 96])] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(stor7945[Mask(140, 20, arg2) << 96])]:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    if balanceOf[address(arg1)] - arg3:
                        if stor-1.length > 0:
                            stor-1.length--
                            call stor-1[stor-1.length] with:
                                 gas gas_remaining wei
                            stor-1[stor-1.length] = 0
                    else:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length--
                else:
                    if balanceOf[address(arg1)] - arg3:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length--
            else:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    if balanceOf[address(arg1)] - arg3:
                        if stor-1.length > 0:
                            stor-1.length--
                            call stor-1[stor-1.length] with:
                                 gas gas_remaining wei
                            stor-1[stor-1.length] = 0
                    else:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length -= 2
                else:
                    if balanceOf[address(arg1)] - arg3:
                        if storFFFF.length > 1:
                            if block.gasprice > storFFFF[storFFFF.length]:
                                storFFFF[storFFFF.length] = 0
                                storFFFF[storFFFF.length] = 0
                                storFFFF.length -= 2
            emit Transfer(arg3, arg1, arg2);
            if address(stor7945[Mask(140, 20, arg2) << 96]) == arg2:
                if storFC85[address(stor7945[Mask(140, 20, arg2) << 96])]:
                    require ext_code.size(address(stor7945[Mask(140, 20, arg2) << 96]))
                    call address(stor7945[Mask(140, 20, arg2) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                emit Transfer(arg3, arg2, address(stor7945[Mask(140, 20, arg2) << 96]));
                if storFC85[address(stor7945[Mask(140, 20, arg2) << 96])]:
                    require ext_code.size(address(stor7945[Mask(140, 20, arg2) << 96]))
                    call address(stor7945[Mask(140, 20, arg2) << 96]).tokenFallback(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
