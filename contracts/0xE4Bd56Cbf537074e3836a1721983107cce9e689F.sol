contract main {




// =====================  Runtime code  =====================


#
#  - buy(bytes32 arg1)
#
const totalTxFeePercent = 4


mapping of uint256 payments;
uint256 totalPayments;
array of struct stor2;
mapping of uint256 numSigsOwned;
mapping of uint256 numSigs;
address owner;
mapping of uint256 mySalePrice;
mapping of uint256 stor8;
mapping of uint256 sub_b5197397;
mapping of address stor10;
array of uint256 stor11;
address shareholder1Address;
address shareholder2Address;
address shareholder3Address;
uint256 numShareholders;

function totalPayments() {
    return totalPayments
}

function getNumSigsOwned(bytes32 arg1) {
    return numSigsOwned[address(msg.sender)][arg1]
}

function shareholder1() {
    return shareholder1Address
}

function numShareholders() {
    return numShareholders
}

function shareholder2() {
    return shareholder2Address
}

function owner() {
    return owner
}

function shareholder3() {
    return shareholder3Address
}

function sub_b5197397(?) {
    return sub_b5197397[arg1]
}

function getNumSigs(bytes32 arg1) {
    return numSigs[arg1]
}

function payments(address arg1) {
    return payments[arg1]
}

function getMySalePrice(bytes32 arg1) {
    return mySalePrice[address(msg.sender)][arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawContractBalance() {
    require msg.sender == owner
    require totalPayments <= eth.balance(this.address)
    require eth.balance(this.address) - totalPayments > 0
    call msg.sender with:
       value eth.balance(this.address) - totalPayments wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBestSale(bytes32 arg1) {
    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0x572f657 with:
         gas gas_remaining wei
        args sha3(arg1, 6)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[12 len 20], delegate.return_data[32]
}

function relistGenesisSales(bytes32 arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0x840a9716 with:
         gas gas_remaining wei
        args sha3(arg1, 6), owner, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mySalePrice[stor5][arg1] = arg2
    emit SalePosted(arg2, owner, arg1);
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSale(bytes32 arg1, uint256 arg2) {
    require arg2 > 0
    require numSigsOwned[address(msg.sender)][arg1] > 0
    if owner != msg.sender:
        require not mySalePrice[address(msg.sender)][arg1]
    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0x840a9716 with:
         gas gas_remaining wei
        args sha3(arg1, 6), msg.sender, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mySalePrice[address(msg.sender)][arg1] = arg2
    require sub_b5197397[arg1] + 1 >= sub_b5197397[arg1]
    sub_b5197397[arg1]++
    if msg.sender == owner:
        require stor8[arg1] + 1 >= stor8[arg1]
        stor8[arg1]++
    emit SalePosted(arg2, msg.sender, arg1);
}

function getAllSigs() {
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint256(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function addShareholderAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    if not shareholder1Address:
        shareholder1Address = arg1
        require numShareholders + 1 >= numShareholders
        numShareholders++
    else:
        if shareholder2Address:
            require not shareholder3Address
        if not shareholder1Address:
            shareholder1Address = arg1
            require numShareholders + 1 >= numShareholders
            numShareholders++
        else:
            if not shareholder2Address:
                shareholder2Address = arg1
                require numShareholders + 1 >= numShareholders
                numShareholders++
            else:
                if not shareholder3Address:
                    shareholder3Address = arg1
                    require numShareholders + 1 >= numShareholders
                    numShareholders++
}

function removeSale(bytes32 arg1) {
    require mySalePrice[address(msg.sender)][arg1] > 0
    if owner != msg.sender:
        require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
        delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
             gas gas_remaining wei
            args sha3(arg1, 6), msg.sender
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mySalePrice[address(msg.sender)][arg1] = 0
    else:
        require 1 <= stor8[arg1]
        stor8[arg1]--
        if not stor8[arg1]:
            require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
            delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
                 gas gas_remaining wei
                args sha3(arg1, 6), msg.sender
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mySalePrice[address(msg.sender)][arg1] = 0
    require 1 <= sub_b5197397[arg1]
    sub_b5197397[arg1]--
    emit SaleCancelled(msg.sender, arg1);
}

function addCard(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    require not numSigs[arg1]
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    numSigsOwned[stor5][arg1] = arg5
    numSigs[arg1] = arg5
    emit CardCreated(arg5, arg1);
    require arg2
    require not stor10[arg1]
    stor10[arg1] = arg2
    mem[96] = arg3
    mem[128] = arg4
    s = 0
    idx = 96
    while 160 > idx:
        stor11[arg1][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while 2 > idx:
        stor11[arg1][idx] = 0
        idx = idx + 1
        continue 
    require msg.sender == owner
    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0x840a9716 with:
         gas gas_remaining wei
        args sha3(arg1, 6), owner, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mySalePrice[stor5][arg1] = arg6
    require stor8[arg1] + arg5 >= stor8[arg1]
    stor8[arg1] += arg5
    require sub_b5197397[arg1] + arg5 >= sub_b5197397[arg1]
    sub_b5197397[arg1] += arg5
    emit SalePosted(arg6, owner, arg1);
}

function transferSig(bytes32 arg1, uint256 arg2, address arg3) {
    require numSigsOwned[address(msg.sender)][arg1] >= arg2
    if msg.sender == owner:
        require arg2 <= numSigsOwned[address(msg.sender)][arg1]
        if numSigsOwned[address(msg.sender)][arg1] - arg2 < stor8[arg1]:
            require numSigsOwned[address(msg.sender)][arg1] - arg2 <= stor8[arg1]
            idx = 0
            while idx < stor8[arg1] - numSigsOwned[address(msg.sender)][arg1] + arg2:
                require mySalePrice[address(msg.sender)][arg1] > 0
                if owner != msg.sender:
                    mem[100] = sha3(arg1, 6)
                    mem[132] = msg.sender
                    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
                    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
                         gas gas_remaining wei
                        args sha3(arg1, 6), msg.sender
                    mem[96] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mySalePrice[address(msg.sender)][arg1] = 0
                else:
                    require 1 <= stor8[arg1]
                    stor8[arg1]--
                    if not stor8[arg1]:
                        mem[100] = sha3(arg1, 6)
                        mem[132] = msg.sender
                        require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
                        delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
                             gas gas_remaining wei
                            args sha3(arg1, 6), msg.sender
                        mem[96] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mySalePrice[address(msg.sender)][arg1] = 0
                require 1 <= sub_b5197397[arg1]
                mem[0] = arg1
                mem[32] = 9
                sub_b5197397[arg1]--
                emit SaleCancelled(msg.sender, arg1);
                idx = idx + 1
                continue 
    else:
        if numSigsOwned[address(msg.sender)][arg1] == arg2:
            if mySalePrice[address(msg.sender)][arg1] > 0:
                require mySalePrice[address(msg.sender)][arg1] > 0
                if owner != msg.sender:
                    require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
                    delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
                         gas gas_remaining wei
                        args sha3(arg1, 6), msg.sender
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mySalePrice[address(msg.sender)][arg1] = 0
                else:
                    require 1 <= stor8[arg1]
                    stor8[arg1]--
                    if not stor8[arg1]:
                        require ext_code.size(0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89)
                        delegate 0xe3f10b91a8fb0e629a178ee4d3d3ac05fd7c5b89.0xeb43cd16 with:
                             gas gas_remaining wei
                            args sha3(arg1, 6), msg.sender
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mySalePrice[address(msg.sender)][arg1] = 0
                require 1 <= sub_b5197397[arg1]
                sub_b5197397[arg1]--
                emit SaleCancelled(msg.sender, arg1);
    require arg2 > 0
    require numSigsOwned[address(msg.sender)][arg1] >= arg2
    require arg2 <= numSigsOwned[address(msg.sender)][arg1]
    numSigsOwned[address(msg.sender)][arg1] -= arg2
    require numSigsOwned[address(arg3)][arg1] + arg2 >= numSigsOwned[address(arg3)][arg1]
    numSigsOwned[address(arg3)][arg1] += arg2
    emit CardsTransferred(arg2, arg1, msg.sender, arg3);
}



}
