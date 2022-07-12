contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct sub_4e9dae28;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779004;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779005;

function sub_4e9dae28(?) {
    require stor0[msg.sender]
    require arg1 < sub_4e9dae28.length
    return sub_4e9dae28[arg1].field_0, 
           sub_4e9dae28[arg1].field_512,
           sub_4e9dae28[arg1].field_1024,
           sub_4e9dae28[arg1].field_1792,
           sub_4e9dae28[arg1].field_1280
}

function admin(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    require stor0[msg.sender]
    require arg1
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require stor0[msg.sender]
    require arg1
    stor0[address(arg1)] = 0
}

function sub_8c260900(?) {
    require stor0[msg.sender]
    require arg2
    require arg1 < sub_4e9dae28.length
    require sub_4e9dae28[arg1].field_1952 <= 2
    require not sub_4e9dae28[arg1].field_1952
    sub_4e9dae28[arg1].field_1952 = 2
    call arg2 with:
       value sub_4e9dae28[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x19ab7221: arg3
}

function sub_3de506a4(?) payable {
    sub_4e9dae28.length++
    sub_4e9dae28[sub_4e9dae28.length].field_0 = arg2
    storB10E[stor1.length] = arg5
    storB10E[stor1.length] = arg3
    storB10E[stor1.length] = block.timestamp
    storB10E[stor1.length] = arg4 + block.timestamp
    storB10E[stor1.length] = msg.value
    storB10E[stor1.length] = arg6
    storB10E[stor1.length].field_0 = arg1
    storB10E[stor1.length].field_0 = arg1
    storB10E[stor1.length].field_160 = 0
    storB10E[stor1.length].field_256 = 0
    emit 0x36872352: sub_4e9dae28.length - 1, arg7
}

function sub_8de035e2(?) payable {
    sub_4e9dae28.length++
    sub_4e9dae28[sub_4e9dae28.length].field_0 = arg1
    storB10E[stor1.length] = arg4
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = block.timestamp
    storB10E[stor1.length] = arg3 + block.timestamp
    storB10E[stor1.length] = msg.value
    storB10E[stor1.length] = arg5
    storB10E[stor1.length].field_0 = msg.sender
    storB10E[stor1.length].field_0 = msg.sender
    storB10E[stor1.length].field_160 = 0
    storB10E[stor1.length].field_256 = 0
    emit 0x36872352: sub_4e9dae28.length - 1, arg6
}

function sub_e137f31b(?) {
    require arg1 < sub_4e9dae28.length
    require sub_4e9dae28[arg1].field_1952 <= 2
    require not sub_4e9dae28[arg1].field_1952
    if sub_4e9dae28[arg1].field_1792 != msg.sender:
        require stor0[msg.sender]
    require block.timestamp >= sub_4e9dae28[arg1].field_1024
    sub_4e9dae28[arg1].field_1952 = 1
    call 0 or sub_4e9dae28[arg1].field_1792 with:
       value sub_4e9dae28[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd68d5698: arg2
}



}
