contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint16 stor0; offset 168
uint64 stor0; offset 184
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    uint16(stor0.field_168) = 10125
    stor0.field_184 % 1099511627776 = 0
    require not msg.value
    require code.data[3824 len 20]
    require code.data[3856 len 20]
    require code.data[3876 len 32]
    require code.data[3908 len 32]
    require code.data[3940 len 32]
    require code.data[3972 len 32]
    address(stor0.field_0) = code.data[3824 len 20]
    stor5 = code.data[3856 len 20]
    stor1 = code.data[3876 len 32]
    stor2 = code.data[3940 len 32]
    stor3 = code.data[3908 len 32]
    stor4 = code.data[3972 len 32]
    return code.data[298 len 3514]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 1


uint64 periodTime; offset 160
address sub_11dddd5eAddress;
uint256 sub_46b64b0e;
uint256 sub_c595fc4d;
uint256 sub_4c4ee588;
uint256 sub_27ee57fc;
address tokenAddress;

function sub_11dddd5e(?) {
    return sub_11dddd5eAddress
}

function periodTime() {
    return periodTime
}

function sub_27ee57fc(?) {
    return sub_27ee57fc
}

function sub_46b64b0e(?) {
    return sub_46b64b0e
}

function sub_4c4ee588(?) {
    return sub_4c4ee588
}

function sub_c595fc4d(?) {
    return sub_c595fc4d
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function recall() {
    require sub_11dddd5eAddress == msg.sender
    call sub_11dddd5eAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_df5c8532(?) {
    require sub_11dddd5eAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.changeController(address rg1) with:
         gas gas_remaining - 710 wei
        args sub_11dddd5eAddress
    require ext_call.success
}

function sub_f734d0bc(?) payable {
    require sub_11dddd5eAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args sub_11dddd5eAddress, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_bd84233f(?) payable {
    mem[64] = 96
    require not msg.value
    if arg1:
        require arg1
        require 10^9 * arg1 / arg1 == 10^9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), 10^9 * arg1
    require ext_call.success
    require ext_call.return_data[0]
    require msg.sender
    if 10^9 * arg1:
        require 10^9 * arg1
        require 10^9 * sub_27ee57fc * arg1 / 10^9 * arg1 == sub_27ee57fc
    require 10^9 * sub_27ee57fc * arg1 == (100 * 10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * sub_27ee57fc * arg1 % 100)
    require (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) >= 10^9 * arg1
    require (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) >= 10^9 * sub_27ee57fc * arg1 / 100
    emit 0x8ef06e84: msg.sender, (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1)
    require sub_c595fc4d > 0
    require sub_c595fc4d
    require (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) == (sub_c595fc4d * (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) / sub_c595fc4d) + ((10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) % sub_c595fc4d)
    idx = 0
    while uint64(idx) < sub_c595fc4d:
        mem[mem[64] + 100] = uint64(block.timestamp + periodTime + (idx * periodTime))
        mem[mem[64] + 132] = uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_code.size(tokenAddress)
        call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
             gas gas_remaining - 710 wei
            args msg.sender, (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) / sub_c595fc4d, block.timestamp + (periodTime * idx) << 192, block.timestamp + periodTime + (idx * periodTime) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_call.success
        mem[mem[64]] = (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) / sub_c595fc4d
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = uint64(block.timestamp + (periodTime * idx))
        mem[mem[64] + 96] = uint64(block.timestamp + periodTime + (idx * periodTime))
        emit 0x1428f280: (10^9 * sub_27ee57fc * arg1 / 100) + (10^9 * arg1) / sub_c595fc4d, msg.sender, block.timestamp + (periodTime * idx) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        idx = idx + 1
        continue 
}

function sub_f8c20ae8(?) payable {
    mem[64] = 96
    require not msg.value
    if arg1:
        require arg1
        require 10^9 * arg1 / arg1 == 10^9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), 10^9 * arg1
    require ext_call.success
    require ext_call.return_data[0]
    require msg.sender
    if 10^9 * arg1:
        require 10^9 * arg1
        require 10^9 * sub_4c4ee588 * arg1 / 10^9 * arg1 == sub_4c4ee588
    require 10^9 * sub_4c4ee588 * arg1 == (100 * 10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * sub_4c4ee588 * arg1 % 100)
    require (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) >= 10^9 * arg1
    require (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) >= 10^9 * sub_4c4ee588 * arg1 / 100
    emit 0x8ef06e84: msg.sender, (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1)
    require sub_46b64b0e > 0
    require sub_46b64b0e
    require (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) == (sub_46b64b0e * (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) / sub_46b64b0e) + ((10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) % sub_46b64b0e)
    idx = 0
    while uint64(idx) < sub_46b64b0e:
        mem[mem[64] + 100] = uint64(block.timestamp + periodTime + (idx * periodTime))
        mem[mem[64] + 132] = uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_code.size(tokenAddress)
        call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
             gas gas_remaining - 710 wei
            args msg.sender, (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) / sub_46b64b0e, block.timestamp + (periodTime * idx) << 192, block.timestamp + periodTime + (idx * periodTime) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_call.success
        mem[mem[64]] = (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) / sub_46b64b0e
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = uint64(block.timestamp + (periodTime * idx))
        mem[mem[64] + 96] = uint64(block.timestamp + periodTime + (idx * periodTime))
        emit 0x1428f280: (10^9 * sub_4c4ee588 * arg1 / 100) + (10^9 * arg1) / sub_46b64b0e, msg.sender, block.timestamp + (periodTime * idx) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        idx = idx + 1
        continue 
}

function sub_c0f2478f(?) payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.spendableBalanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require msg.sender
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require sub_4c4ee588 * ext_call.return_data[0] / ext_call.return_data[0] == sub_4c4ee588
    require sub_4c4ee588 * ext_call.return_data[0] == (100 * sub_4c4ee588 * ext_call.return_data[0] / 100) + (sub_4c4ee588 * ext_call.return_data[0] % 100)
    require (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= sub_4c4ee588 * ext_call.return_data[0] / 100
    emit 0x8ef06e84: msg.sender, (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0]
    require sub_46b64b0e > 0
    require sub_46b64b0e
    require (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] == (sub_46b64b0e * (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_46b64b0e) + ((sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] % sub_46b64b0e)
    idx = 0
    while uint64(idx) < sub_46b64b0e:
        mem[mem[64] + 100] = uint64(block.timestamp + periodTime + (idx * periodTime))
        mem[mem[64] + 132] = uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_code.size(tokenAddress)
        call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
             gas gas_remaining - 710 wei
            args msg.sender, (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_46b64b0e, block.timestamp + (periodTime * idx) << 192, block.timestamp + periodTime + (idx * periodTime) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_call.success
        mem[mem[64]] = (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_46b64b0e
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = uint64(block.timestamp + (periodTime * idx))
        mem[mem[64] + 96] = uint64(block.timestamp + periodTime + (idx * periodTime))
        emit 0x1428f280: (sub_4c4ee588 * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_46b64b0e, msg.sender, block.timestamp + (periodTime * idx) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        idx = idx + 1
        continue 
}

function sub_db2d17a5(?) payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.spendableBalanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require msg.sender
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require sub_27ee57fc * ext_call.return_data[0] / ext_call.return_data[0] == sub_27ee57fc
    require sub_27ee57fc * ext_call.return_data[0] == (100 * sub_27ee57fc * ext_call.return_data[0] / 100) + (sub_27ee57fc * ext_call.return_data[0] % 100)
    require (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= sub_27ee57fc * ext_call.return_data[0] / 100
    emit 0x8ef06e84: msg.sender, (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0]
    require sub_c595fc4d > 0
    require sub_c595fc4d
    require (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] == (sub_c595fc4d * (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_c595fc4d) + ((sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] % sub_c595fc4d)
    idx = 0
    while uint64(idx) < sub_c595fc4d:
        mem[mem[64] + 100] = uint64(block.timestamp + periodTime + (idx * periodTime))
        mem[mem[64] + 132] = uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_code.size(tokenAddress)
        call tokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5) with:
             gas gas_remaining - 710 wei
            args msg.sender, (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_c595fc4d, block.timestamp + (periodTime * idx) << 192, block.timestamp + periodTime + (idx * periodTime) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        require ext_call.success
        mem[mem[64]] = (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_c595fc4d
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = uint64(block.timestamp + (periodTime * idx))
        mem[mem[64] + 96] = uint64(block.timestamp + periodTime + (idx * periodTime))
        emit 0x1428f280: (sub_27ee57fc * ext_call.return_data[0] / 100) + ext_call.return_data[0] / sub_c595fc4d, msg.sender, block.timestamp + (periodTime * idx) << 192, uint64(block.timestamp + periodTime + (idx * periodTime))
        idx = idx + 1
        continue 
}



}
