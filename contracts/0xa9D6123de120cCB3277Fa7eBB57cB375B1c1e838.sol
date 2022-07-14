contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 0

const symbol = ''


address cryptonomicaVerificationAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 sub_551f59c9;
uint256 sub_90136322;
mapping of uint8 stor10;
mapping of struct sub_dc78ab8e;
mapping of struct sub_39a7412b;
uint256 sub_b82dfbcb;
mapping of struct sub_439e6e09;
uint256 sub_15a74a99;
mapping of struct sub_b3dc174e;
mapping of uint8 stor17;

function sub_12b8b324(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_15a74a99(?) payable {
    return sub_15a74a99
}

function totalSupply() payable {
    return totalSupply
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function cryptonomicaVerification() payable {
    return cryptonomicaVerificationAddress
}

function canBurn(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_39a7412b(?) payable {
    require calldata.size - 4 >= 32
    return sub_39a7412b[arg1].field_0, 
           sub_39a7412b[arg1].field_256,
           sub_39a7412b[arg1].field_512,
           sub_39a7412b[arg1].field_768,
           sub_39a7412b[arg1].field_1024
}

function sub_439e6e09(?) payable {
    require calldata.size - 4 >= 32
    return sub_439e6e09[arg1].field_0, sub_439e6e09[arg1].field_256, sub_439e6e09[arg1].field_512
}

function sub_551f59c9(?) payable {
    return sub_551f59c9
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_90136322(?) payable {
    return sub_90136322
}

function sub_b3dc174e(?) payable {
    require calldata.size - 4 >= 32
    return sub_b3dc174e[arg1].field_0, 
           sub_b3dc174e[arg1].field_256,
           sub_b3dc174e[arg1].field_512,
           sub_b3dc174e[arg1].field_768,
           sub_b3dc174e[arg1].field_1024,
           sub_b3dc174e[arg1].field_1280
}

function sub_b82dfbcb(?) payable {
    return sub_b82dfbcb
}

function canMint(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_c3250df2(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function sub_c9d59949(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sub_dc78ab8e(?) payable {
    require calldata.size - 4 >= 32
    return sub_dc78ab8e[arg1].field_0, 
           sub_dc78ab8e[arg1].field_256,
           sub_dc78ab8e[arg1].field_512,
           sub_dc78ab8e[arg1].field_768,
           sub_dc78ab8e[arg1].field_1024
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_0143faba(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor6[address(arg1)] = 0
    emit 0x360cc1ec: msg.sender, arg1
    return 1
}

function sub_2b5e071a(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor6[address(arg1)] = 1
    emit 0xa3824f40: msg.sender, arg1
    return 1
}

function sub_35e80056(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor7[address(arg1)] = 0
    emit 0x712c2fc5: msg.sender, arg1
    return 1
}

function sub_70532b44(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor5[address(arg1)] = 0
    emit 0xd4373432: msg.sender, arg1
    return 1
}

function sub_7c390bd8(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor5[address(arg1)] = 1
    emit 0xdac47485: msg.sender, arg1
    return 1
}

function sub_9484d4a2(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    stor7[address(arg1)] = 1
    emit 0x839a19aa: msg.sender, arg1
    return 1
}

function sub_0e5d127d(?) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    sub_551f59c9 = arg1
    emit 0x647ea6b9: sub_551f59c9, arg1, msg.sender
    return 1
}

function changeCryptonomicaVerificationContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    cryptonomicaVerificationAddress = arg1
    return 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    if arg1 == msg.sender:
        revert with 0, 'Admin can't remove himself'
    stor4[address(arg1)] = 0
    emit AdminRemoved(msg.sender, arg1);
    return 1
}

function sub_04681a28(?) payable {
    require calldata.size - 4 >= 96
    if not stor7[msg.sender]:
        revert with 0, 'Sender not authorized'
    if arg1 > balanceOf[this.address]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x644163636f756e7420646f6573206e6f74206861766520726571756972656420616d6f756e,
                    mem[201 len 27]
    if stor17[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x74546869732066696174207061796d656e7420696420697320616c726561647920757365,
                    mem[200 len 28]
    require arg1 <= balanceOf[this.address]
    balanceOf[this.address] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    sub_15a74a99++
    sub_b3dc174e[stor15 + 1].field_0 = msg.sender or Mask(96, 160, sub_b3dc174e[stor15 + 1].field_0)
    sub_b3dc174e[stor15].field_256 = arg1
    sub_b3dc174e[stor15].field_512 = arg2
    sub_b3dc174e[stor15].field_768 = arg3
    sub_b3dc174e[stor15].field_1024 = block.timestamp
    sub_b3dc174e[stor15].field_1280 = totalSupply
    emit 0x535315e7: arg1, block.timestamp, totalSupply, msg.sender, arg2, arg3
    stor17[arg3] = 1
    return 1
}

function mintTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5[msg.sender]:
        revert with 0, 'Sender not authorized'
    if stor10[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x74546869732066696174207061796d656e7420696420697320616c726561647920757365,
                    mem[200 len 28]
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg1
    sub_90136322++
    sub_39a7412b[stor9 + 1].field_0 = msg.sender or Mask(96, 160, sub_39a7412b[stor9 + 1].field_0)
    sub_39a7412b[stor9].field_256 = arg2
    sub_39a7412b[stor9].field_512 = arg1
    sub_39a7412b[stor9].field_768 = block.timestamp
    sub_39a7412b[stor9].field_1024 = totalSupply
    sub_dc78ab8e[arg2].field_0 = sub_39a7412b[stor9].field_0
    sub_dc78ab8e[arg2].field_256 = sub_39a7412b[stor9].field_256
    sub_dc78ab8e[arg2].field_512 = sub_39a7412b[stor9].field_512
    sub_dc78ab8e[arg2].field_768 = sub_39a7412b[stor9].field_768
    sub_dc78ab8e[arg2].field_1024 = sub_39a7412b[stor9].field_1024
    emit 0x3446268f: arg1, totalSupply, msg.sender, arg2, sub_90136322
    stor10[arg2] = 1
    return 1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[msg.sender]:
        revert with 0, 'tOnly admin can do that'
    require ext_code.size(cryptonomicaVerificationAddress)
    staticcall cryptonomicaVerificationAddress.keyCertificateValidUntil(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x4e65772061646d696e2068617320746f206265207665726966696564206f6e2043727970746f6e6f6d6963612e6e6500,
                    mem[212 len 16]
    require ext_code.size(cryptonomicaVerificationAddress)
    staticcall cryptonomicaVerificationAddress.revokedOn(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x74566572696669636174696f6e20666f722074686973206164647265737320776173207265766f6b65642c2063616e206e6f74206164,
                    mem[218 len 10]
    stor4[address(arg1)] = 1
    emit AdminAdded(msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if arg3 > allowance[address(arg1)][msg.sender]:
            if arg1 != this.address:
                revert with 0, 'Sender not authorized'
            if not stor6[msg.sender]:
                revert with 0, 'Sender not authorized'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4163636f756e7420646f65736e2774206861766520726571756972656420616d6f756e,
                    mem[200 len 28]
    if this.address == arg2:
        if arg1 != msg.sender:
            revert with 0, 'Only token holder can do this'
        if arg3 < sub_551f59c9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x7456616c7565206973206c657373207468616e206d696e2e2065786368616e676520616d6f756e,
                        mem[203 len 25]
        sub_b82dfbcb++
        emit 0x9f2fe8c1: arg3, arg1, sub_b82dfbcb + 1
        sub_439e6e09[stor13].field_0 = arg1
        sub_439e6e09[stor13].field_256 = arg3
        sub_439e6e09[stor13].field_512 = block.timestamp
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg1 != msg.sender:
        if arg1 != this.address:
            require arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != msg.sender:
        if arg2 > allowance[address(msg.sender)][msg.sender]:
            if msg.sender != this.address:
                revert with 0, 'Sender not authorized'
            if not stor6[msg.sender]:
                revert with 0, 'Sender not authorized'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4163636f756e7420646f65736e2774206861766520726571756972656420616d6f756e,
                    mem[200 len 28]
    if this.address == arg1:
        if msg.sender != msg.sender:
            revert with 0, 'Only token holder can do this'
        if arg2 < sub_551f59c9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x7456616c7565206973206c657373207468616e206d696e2e2065786368616e676520616d6f756e,
                        mem[203 len 25]
        sub_b82dfbcb++
        emit 0x9f2fe8c1: arg2, msg.sender, sub_b82dfbcb + 1
        sub_439e6e09[stor13].field_0 = msg.sender
        sub_439e6e09[stor13].field_256 = arg2
        sub_439e6e09[stor13].field_512 = block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if msg.sender != msg.sender:
        if msg.sender != this.address:
            require arg2 <= allowance[address(msg.sender)][msg.sender]
            allowance[address(msg.sender)][msg.sender] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_66e02dda(?) payable {
    require calldata.size - 4 >= 96
    if not stor5[msg.sender]:
        revert with 0, 'Sender not authorized'
    if stor10[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x74546869732066696174207061796d656e7420696420697320616c726561647920757365,
                    mem[200 len 28]
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg1
    sub_90136322++
    sub_39a7412b[stor9 + 1].field_0 = msg.sender or Mask(96, 160, sub_39a7412b[stor9 + 1].field_0)
    sub_39a7412b[stor9].field_256 = arg2
    sub_39a7412b[stor9].field_512 = arg1
    sub_39a7412b[stor9].field_768 = block.timestamp
    sub_39a7412b[stor9].field_1024 = totalSupply
    sub_dc78ab8e[arg2].field_0 = sub_39a7412b[stor9].field_0
    sub_dc78ab8e[arg2].field_256 = sub_39a7412b[stor9].field_256
    sub_dc78ab8e[arg2].field_512 = sub_39a7412b[stor9].field_512
    sub_dc78ab8e[arg2].field_768 = sub_39a7412b[stor9].field_768
    sub_dc78ab8e[arg2].field_1024 = sub_39a7412b[stor9].field_1024
    emit 0x3446268f: arg1, totalSupply, msg.sender, arg2, sub_90136322
    stor10[arg2] = 1
    if msg.sender != this.address:
        if arg1 > allowance[address(this.address)][msg.sender]:
            if this.address != this.address:
                revert with 0, 'Sender not authorized'
            if not stor6[msg.sender]:
                revert with 0, 'Sender not authorized'
    if arg1 > balanceOf[address(this.address)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4163636f756e7420646f65736e2774206861766520726571756972656420616d6f756e,
                    mem[200 len 28]
    if this.address == arg3:
        if this.address != msg.sender:
            revert with 0, 'Only token holder can do this'
        if arg1 < sub_551f59c9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x7456616c7565206973206c657373207468616e206d696e2e2065786368616e676520616d6f756e,
                        mem[203 len 25]
        sub_b82dfbcb++
        emit 0x9f2fe8c1: arg1, this.address, sub_b82dfbcb + 1
        sub_439e6e09[stor13].field_0 = this.address
        sub_439e6e09[stor13].field_256 = arg1
        sub_439e6e09[stor13].field_512 = block.timestamp
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    require arg1 + balanceOf[arg3] >= balanceOf[arg3]
    balanceOf[address(arg3)] = arg1 + balanceOf[arg3]
    if this.address != msg.sender:
        if this.address != this.address:
            require arg1 <= allowance[address(this.address)][msg.sender]
            allowance[address(this.address)][msg.sender] -= arg1
    emit Transfer(arg1, this.address, arg3);
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if msg.sender != msg.sender:
        if arg2 > allowance[address(msg.sender)][msg.sender]:
            if msg.sender != this.address:
                revert with 0, 'Sender not authorized'
            if not stor6[msg.sender]:
                revert with 0, 'Sender not authorized'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    36,
                    0xfe4163636f756e7420646f65736e2774206861766520726571756972656420616d6f756e,
                    mem[ceil32(arg3.length) + 232 len 28]
    if this.address == arg1:
        if msg.sender != msg.sender:
            revert with 0, 'Only token holder can do this'
        if arg2 < sub_551f59c9:
            revert with 0, 
                        32,
                        39,
                        0x7456616c7565206973206c657373207468616e206d696e2e2065786368616e676520616d6f756e,
                        mem[ceil32(arg3.length) + 235 len 25]
        sub_b82dfbcb++
        mem[ceil32(arg3.length) + 128] = arg2
        emit 0x9f2fe8c1: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], msg.sender, sub_b82dfbcb + 1
        sub_439e6e09[stor13].field_0 = msg.sender
        sub_439e6e09[stor13].field_256 = arg2
        sub_439e6e09[stor13].field_512 = block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if msg.sender != msg.sender:
        if msg.sender != this.address:
            require arg2 <= allowance[address(msg.sender)][msg.sender]
            allowance[address(msg.sender)][msg.sender] -= arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 196] = 96
    mem[ceil32(arg3.length) + 228] = arg3.length
    mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit DataSentToAnotherContract(address arg1, address arg2, bytes arg3):
                                       0,
                                       32,
                                       arg3.length,
                                       Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                                       msg.sender,
                                       arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
        emit DataSentToAnotherContract(address arg1, address arg2, bytes arg3):
                                       0,
                                       32,
                                       arg3.length,
                                       Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                                       mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                                       msg.sender,
                                       arg1,
    return 0, 1
}

function transferAllAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender != msg.sender:
        if balanceOf[msg.sender] > allowance[address(msg.sender)][msg.sender]:
            if msg.sender != this.address:
                revert with 0, 'Sender not authorized'
            if not stor6[msg.sender]:
                revert with 0, 'Sender not authorized'
    if balanceOf[msg.sender] > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    36,
                    0xfe4163636f756e7420646f65736e2774206861766520726571756972656420616d6f756e,
                    mem[ceil32(arg2.length) + 232 len 28]
    if this.address == arg1:
        if msg.sender != msg.sender:
            revert with 0, 'Only token holder can do this'
        if balanceOf[msg.sender] < sub_551f59c9:
            revert with 0, 
                        32,
                        39,
                        0x7456616c7565206973206c657373207468616e206d696e2e2065786368616e676520616d6f756e,
                        mem[ceil32(arg2.length) + 235 len 25]
        sub_b82dfbcb++
        mem[ceil32(arg2.length) + 128] = balanceOf[msg.sender]
        emit 0x9f2fe8c1: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], msg.sender, sub_b82dfbcb + 1
        sub_439e6e09[stor13].field_0 = msg.sender
        sub_439e6e09[stor13].field_256 = balanceOf[msg.sender]
        sub_439e6e09[stor13].field_512 = block.timestamp
    require balanceOf[msg.sender] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
    require balanceOf[msg.sender] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[msg.sender] + balanceOf[arg1]
    if msg.sender != msg.sender:
        if msg.sender != this.address:
            require balanceOf[msg.sender] <= allowance[address(msg.sender)][msg.sender]
            allowance[address(msg.sender)][msg.sender] -= balanceOf[msg.sender]
    mem[ceil32(arg2.length) + 128] = balanceOf[msg.sender]
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
                  msg.sender,
                  arg1,
    mem[ceil32(arg2.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 196] = 96
    mem[ceil32(arg2.length) + 228] = arg2.length
    mem[ceil32(arg2.length) + 260 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, balanceOf[msg.sender], Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit DataSentToAnotherContract(address arg1, address arg2, bytes arg3):
                                       0,
                                       32,
                                       arg2.length,
                                       Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                                       msg.sender,
                                       arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit DataSentToAnotherContract(address arg1, address arg2, bytes arg3):
                                       0,
                                       32,
                                       arg2.length,
                                       Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                                       mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                                       msg.sender,
                                       arg1,
    return 0, 1
}



}
