contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint128 stor8; offset 160
uint256 stor8;

function _fallback() payable {
    stor0 = code.data[2021 len 32]
    stor1 = code.data[2053 len 32]
    stor2 = code.data[2085 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[2149 len 32] or Mask(96, 160, stor3)
    uint256(stor8.field_0) = Mask(96, 0, stor8.field_160)
    return code.data[110 len 1911]
}



// =====================  Runtime code  =====================


uint8 sub_ee0e7a7d; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_371fa854;
address sub_99b24e0aAddress;
uint256 stor2;
address sub_8c062e4eAddress;
uint256 times;
uint8 sub_cea941fc;
uint8 voted; offset 8
uint256 gasUsed;
address libAddress;
uint256 stor7;
address sub_355e937dAddress;
uint256 stor8;

function voted() payable {
    return voted
}

function sub_355e937d(?) payable {
    return address(sub_355e937dAddress)
}

function sub_371fa854(?) payable {
    return sub_371fa854
}

function gasUsed() payable {
    return gasUsed
}

function sub_8c062e4e(?) payable {
    return sub_8c062e4eAddress
}

function owner() payable {
    return owner
}

function lib() payable {
    return address(libAddress)
}

function sub_99b24e0a(?) payable {
    return address(sub_99b24e0aAddress)
}

function times() payable {
    return times
}

function sub_cea941fc(?) payable {
    return sub_cea941fc
}

function sub_ee0e7a7d(?) payable {
    return sub_ee0e7a7d
}

function sub_fb91de56(?) payable {
    require owner == msg.sender
    sub_371fa854 = arg1
}

function sub_21ee999c(?) payable {
    require owner == msg.sender
    stor0 = Mask(96, 0, arg1)
}

function setActor(address arg1) payable {
    require owner == msg.sender
    uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function setLibrary(address arg1) payable {
    require owner == msg.sender
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function setCurator(address arg1) payable {
    require owner == msg.sender
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function vote() payable {
    require owner == msg.sender
    voted = 1
    call sub_8c062e4eAddress.vote(uint256 rg1, bool rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, 1
    require ext_call.success
}

function start() payable {
    require owner == msg.sender
    sub_cea941fc = 1
    call sub_8c062e4eAddress.splitDAO(uint256 rg1, address rg2) with:
         gas gas_remaining - 25050 wei
        args sub_371fa854, address(sub_99b24e0aAddress)
    require ext_call.success
}

function executeDelegate(address arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        delegate arg1 with:
             gas gas_remaining - 50 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        delegate arg1.mem[ceil32(arg2.length) + 128 len 4] with:
             gas gas_remaining - 50 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require delegate.return_code
}

function execute(address arg1, bytes arg2, uint256 arg3) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call arg1 with:
           value arg3 wei
             gas gas_remaining - 34050 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}

function _fallback() payable {
    if address(libAddress) != 0:
        delegate address(libAddress) with:
             gas gas_remaining - 50 wei
            args 
        require delegate.return_code
    else:
        call sub_8c062e4eAddress.balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        if not sub_ee0e7a7d:
            call sub_8c062e4eAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args address(sub_355e937dAddress), ext_call.return_data[0]
        else:
            if gas_remaining <= 200000:
                call sub_8c062e4eAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(sub_355e937dAddress), ext_call.return_data[0]
            else:
                if eth.balance(sub_8c062e4eAddress) > ext_call.return_data[0]:
                    call sub_8c062e4eAddress.splitDAO(uint256 rg1, address rg2) with:
                         gas gas_remaining - 25050 wei
                        args sub_371fa854, address(sub_99b24e0aAddress)
                    require ext_call.success
                else:
                    call sub_8c062e4eAddress.balanceOf(address rg1) with:
                         gas gas_remaining - 25050 wei
                        args this.address
                    require ext_call.success
                    call sub_8c062e4eAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(sub_355e937dAddress), ext_call.return_data[0]
}



}
