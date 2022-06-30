contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct priceETHXBT;

function priceETHXBT() {
    return priceETHXBT[0 len priceETHXBT.length].field_0
}

function _fallback() payable {
    revert
}

function update() payable {
    stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
    require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
    call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > eth.balance(this.address):
        emit LogNewOraclizeQuery(Array(len=76, data=0x2e4f7261636c697a6520717565727920776173204e4f542073656e742c20706c656173652061646420736f6d652045544820746f20636f76657220666f722074686520717565727920666565, mem[300 len 20]));
    else:
        emit LogNewOraclizeQuery(Array(len=54, data=0xfe4f7261636c697a65207175657279207761732073656e742c207374616e64696e6720627920666f722074686520616e737765722e2e, mem[278 len 10]));
        stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
        require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
        call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
             gas gas_remaining wei
            args ''
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
            require ext_code.size(stor0)
            call stor0.query(uint256 arg1, string arg2, string arg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 60, 96, 160, 3, 0, 76, 0x216a736f6e2868747470733a2f2f6170692e6b72616b656e2e636f6d2f302f7075626c69632f5469636b65723f706169723d455448584254292e726573756c742e58455448585842542e632e, mem[332 len 20] >> 256, mem[404 len 12]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function __callback(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
    require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
    staticcall 0x994239eec04766aade286f151a5fc13335ef1d26.cbAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
    require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
    call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > eth.balance(this.address):
        mem[ceil32(arg2.length) + 288 len 76] = 0x2e4f7261636c697a6520717565727920776173204e4f542073656e742c20706c656173652061646420736f6d652045544820746f20636f76657220666f722074686520717565727920666565
        emit LogNewOraclizeQuery(Array(len=76, data=0x2e4f7261636c697a6520717565727920776173204e4f542073656e742c20706c656173652061646420736f6d652045544820746f20636f76657220666f722074686520717565727920666565, mem[ceil32(arg2.length) + 364 len 20]));
        priceETHXBT[].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + 288] = uint256(priceETHXBT.field_0)
        idx = ceil32(arg2.length) + 288
        s = 0
        while ceil32(arg2.length) + priceETHXBT.length + 288 > idx + 32:
            mem[idx + 32] = priceETHXBT[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xcdbb0c41: Array(len=priceETHXBT.length, data=mem[ceil32(arg2.length) + 288 len priceETHXBT.length + (floor32(priceETHXBT.length - 1) + -priceETHXBT.length + 32 % 32)])
    else:
        emit LogNewOraclizeQuery(Array(len=54, data=0xfe4f7261636c697a65207175657279207761732073656e742c207374616e64696e6720627920666f722074686520616e737765722e2e, mem[ceil32(arg2.length) + 342 len 10]));
        stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
        mem[ceil32(arg2.length) + 484] = 0
        require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
        call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
             gas gas_remaining wei
            args ''
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
            mem[ceil32(arg2.length) + 516] = 3
            mem[ceil32(arg2.length) + 548] = 0
            mem[ceil32(arg2.length) + 484] = 160
            mem[ceil32(arg2.length) + 580] = 76
            mem[ceil32(arg2.length) + 612 len 96] = 0x216a736f6e2868747470733a2f2f6170692e6b72616b656e2e636f6d2f302f7075626c69632f5469636b65723f706169723d455448584254292e726573756c742e58455448585842542e632e, mem[ceil32(arg2.length) + 396 len 20]
            mem[ceil32(arg2.length) + 676] = mem[ceil32(arg2.length) + 468 len 12]
            require ext_code.size(stor0)
            call stor0.query(uint256 arg1, string arg2, string arg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 60, 96, 160, 3, 0, 76, 0x216a736f6e2868747470733a2f2f6170692e6b72616b656e2e636f6d2f302f7075626c69632f5469636b65723f706169723d455448584254292e726573756c742e58455448585842542e632e, mem[ceil32(arg2.length) + 396 len 20] >> 256, mem[ceil32(arg2.length) + 468 len 12]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        priceETHXBT[].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + 480] = uint256(priceETHXBT.field_0)
        idx = ceil32(arg2.length) + 480
        s = 0
        while ceil32(arg2.length) + priceETHXBT.length + 480 > idx + 32:
            mem[idx + 32] = priceETHXBT[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xcdbb0c41: Array(len=priceETHXBT.length, data=mem[ceil32(arg2.length) + 480 len priceETHXBT.length + (floor32(priceETHXBT.length - 1) + -priceETHXBT.length + 32 % 32)])
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
    require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
    staticcall 0x994239eec04766aade286f151a5fc13335ef1d26.cbAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
    require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
    call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > eth.balance(this.address):
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len 76] = 0x2e4f7261636c697a6520717565727920776173204e4f542073656e742c20706c656173652061646420736f6d652045544820746f20636f76657220666f722074686520717565727920666565
        emit LogNewOraclizeQuery(Array(len=76, data=0x2e4f7261636c697a6520717565727920776173204e4f542073656e742c20706c656173652061646420736f6d652045544820746f20636f76657220666f722074686520717565727920666565, mem[ceil32(arg2.length) + ceil32(arg3.length) + 364 len 20]));
        priceETHXBT[].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = uint256(priceETHXBT.field_0)
        idx = ceil32(arg2.length) + ceil32(arg3.length) + 288
        s = 0
        while ceil32(arg2.length) + ceil32(arg3.length) + priceETHXBT.length + 288 > idx + 32:
            mem[idx + 32] = priceETHXBT[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xcdbb0c41: Array(len=priceETHXBT.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len priceETHXBT.length + (floor32(priceETHXBT.length - 1) + -priceETHXBT.length + 32 % 32)])
    else:
        emit LogNewOraclizeQuery(Array(len=54, data=0xfe4f7261636c697a65207175657279207761732073656e742c207374616e64696e6720627920666f722074686520616e737765722e2e, mem[ceil32(arg2.length) + ceil32(arg3.length) + 342 len 10]));
        stor0 = 0x994239eec04766aade286f151a5fc13335ef1d26
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 484] = 0
        require ext_code.size(0x994239eec04766aade286f151a5fc13335ef1d26)
        call 0x994239eec04766aade286f151a5fc13335ef1d26.getPrice(string arg1) with:
             gas gas_remaining wei
            args ''
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 516] = 3
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 548] = 0
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 484] = 160
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 580] = 76
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 612 len 96] = 0x216a736f6e2868747470733a2f2f6170692e6b72616b656e2e636f6d2f302f7075626c69632f5469636b65723f706169723d455448584254292e726573756c742e58455448585842542e632e, mem[ceil32(arg2.length) + ceil32(arg3.length) + 396 len 20]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 676] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 468 len 12]
            require ext_code.size(stor0)
            call stor0.query(uint256 arg1, string arg2, string arg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 60, 96, 160, 3, 0, 76, 0x216a736f6e2868747470733a2f2f6170692e6b72616b656e2e636f6d2f302f7075626c69632f5469636b65723f706169723d455448584254292e726573756c742e58455448585842542e632e, mem[ceil32(arg2.length) + ceil32(arg3.length) + 396 len 20] >> 256, mem[ceil32(arg2.length) + ceil32(arg3.length) + 468 len 12]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        priceETHXBT[].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 480] = uint256(priceETHXBT.field_0)
        idx = ceil32(arg2.length) + ceil32(arg3.length) + 480
        s = 0
        while ceil32(arg2.length) + ceil32(arg3.length) + priceETHXBT.length + 480 > idx + 32:
            mem[idx + 32] = priceETHXBT[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xcdbb0c41: Array(len=priceETHXBT.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len priceETHXBT.length + (floor32(priceETHXBT.length - 1) + -priceETHXBT.length + 32 % 32)])
}



}
