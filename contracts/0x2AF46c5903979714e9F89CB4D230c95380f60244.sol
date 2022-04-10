contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'storage42' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5[0x408a302b84c5747fb668234f6ca6d3c63f305611] = 10^15
    return code.data[494 len 6986]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_358bfba6;
array of struct sub_7b957fc1;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function sub_358bfba6(?) {
    require arg1 < sub_358bfba6.length
    return sub_358bfba6[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7b957fc1(?) {
    require arg1 < sub_7b957fc1.length
    return sub_7b957fc1[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    mem[96] = 0xe4537b2a98e80c20262eb209ee35490ec3d54f03
    mem[128] = 0x31c7b2416d8d63435f15287a54aa139750e9779b
    mem[160] = 0x2707749cc8d0ef5f1014f6326ac2f3a51639ec2
    mem[192] = 0x286141b7fb1c66c6649d77f9c6ce6130ae2b06ef
    mem[224] = 0x33c26c9f9c79b2956b09118c6d9bfa53f750fa16
    mem[256] = 0x441e4b6caa993323ef9240b3aafe687a9cd0a919
    mem[288] = 0x5be173537387c6e2a2fc5746e7353aaf66da470f
    mem[320] = 0xe41dd679e64e6ca4aa29b92d2d82e2f5d89a51d4
    mem[352] = 0x18caecd491d807a49abf80d6cdb80aae1c86a8a0
    mem[384] = 0xea6fde89004eedc1232966ad26164dfff5e5cca7
    mem[416] = 0x58f1f10ed50acbc65ef905f5f8fdd194e7c1ef3c
    mem[448] = 0x2e597e1d89708113f08457b596147aaf6c288116
    mem[480] = 0x1fdc81fb3bf303fa1877264a0d113d149a774594
    mem[512] = 0xaaa5ce0cf89136cc46f8c6d74b450448a7f213c3
    mem[544] = 0x99fb3af9fae53cb9e9a47e3a86d5e169877763a2
    mem[576] = 0x2e7f2fd3db0b51a9721f12cb59c33ccc56d1ae8c
    mem[608] = 0x23e620d02737558c446f115c9be5485e0d1707ad
    mem[640] = 0x5bd91ec51554bf0b65d3fec13647b8b77b345603
    mem[672] = 0x110813b4c3654f9f59ec257fc508c7ee009f9319
    mem[704] = 0xc7387df6f92a17e127ca3262776110303e9077e5
    mem[736] = 0xfb8847845f26b797b97aa9c05519a38c374596f5
    mem[768] = 0xc469d7e2bcc5e97289b55753a82db78a8b06711a
    mem[800] = 0x40a68428d998096e841291a72c0e68344acf6e10
    mem[832] = 0xd6a4393cf502c2313d817764ecb923335b5ee6c8
    mem[864] = 0xf9da7f87ed2dd73ba11bef4b317393289d310f7a
    mem[896] = 0x6c1f2f171f1e0d39f2a872d6032300f30efbe1
    mem[928] = 0x36c987d095236e083417871967e291c579daa8
    mem[960] = 0x6ceb1b20077094c112f2152a3f7c792d8b490195
    mem[992] = 0xb27307537841d837772a7b5fbf761ea04e8c6567
    mem[1024] = 0x5eda26fb90553d0951671ea2f78219d5b9333f65
    mem[1056] = 0xb525d2988aa38f7b094fa8d444b3e55cfb2e710a
    mem[1088] = 0xc3a8005602ca28715f03757ae7dff2783da06dab
    mem[1120] = 0xf0080f9370e64686a99d50ee2ac4077f2f727880
    mem[1152] = 0x9fb09bea33ca2a28471eab9e55d3fc2616db4e95
    mem[1184] = 0x739c86a4508452742818cb2c0e8421ee270ca7d4
    mem[1216] = 0xa90846afc0fdcfa421c9dd276898a80347cc6749
    mem[1248] = 0xe5cde2e075b4c67727d8476a648de11615b08f90
    mem[1280] = 0x3066b3051c5eb691d364476da838cf5a4e740b2
    sub_7b957fc1.length = 38
    s = 0
    idx = 96
    while 1312 > idx:
        sub_7b957fc1[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_7b957fc1.length > idx:
        sub_7b957fc1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[1312] = 0x4536a9c07c8117ca78bf3855aa2cf24d1e39b5f3
    mem[1344] = 0x934421f24a21cd3405893d09624911e5da287176
    mem[1376] = 0x9b411a36cce8433126d3e67d10f865469db4b243
    mem[1408] = 0xa445d2241f5bdcd8b116f9a765b5b74ce21ec792
    mem[1440] = 0x632152fac2bb468633bb764c9312b2edb5cf10ba
    mem[1472] = 0xa488c7f3d9771bef7c8dd325dfda34228b932df
    mem[1504] = 0x54c6c4b6d118abd3cc1a957db0f0d3ecaa61805f
    mem[1536] = 0x9c906d6de91d296a9770049fa8cb650fed5106b1
    mem[1568] = 0x2e7e2ce14ba705c30e1732789167d4baf8fdfcc1
    mem[1600] = 0x56ad263559a73e25daccbe83a9de40d1b74a1954
    mem[1632] = 0xe56217ffe939e32e3859f559da595f6359291d65
    mem[1664] = 0xd39bac6062922d077e31ec4657a8152ddc76b270
    mem[1696] = 0xfbf6154bed7361424e254d9105e26c48cdc40bd8
    mem[1728] = 0x43cbebd63599229d1e9cafaf0c20a75b7375adf7
    mem[1760] = 0x2fb48b92d593cd6866a121993253d308cdf42b3b
    mem[1792] = 0x97950c13a7d8e80cad7e207bdd230e812180883
    mem[1824] = 0x58647df3c8747b52257fc70d18430c002a67d23a
    mem[1856] = 0xe197a6bb7bf5e6f070cd36c1281620b66e70b5ba
    mem[1888] = 0x86c1fcc24faa3d6bd8f9723e1e8806dd440b90ea
    mem[1920] = 0xcb37d1070d314d858e708a56c0cac82d78c4e373
    mem[1952] = 0xcdce2368099c9a29879c502d73d16238ed652fe4
    mem[1984] = 0xe8bf7fce067777ffd943c565748fe5dba2d85972
    mem[2016] = 0x3058b016c655b606a2d4072e13fdf97e7902867f
    mem[2048] = 0x13123307a918ebb6b9dbbeb2e8c4a85289a2aa4a
    mem[2080] = 0x6eabfb8d9680d0cf2f9c6bd3a387ac70bad80cf4
    mem[2112] = 0xb621cd03ea506a61b9587936957c2646af5489
    mem[2144] = 0x783bb499142851151f8bea6bfa20b42483bfefc0
    mem[2176] = 0x9a56ed56bd12567b07e1adcdf2a824541738b41a
    mem[2208] = 0x940da027433c4607c6a07d829341a26021ed8bab
    mem[2240] = 0xeeb00a70c3eeb993f0d91e02be37b121437534db
    mem[2272] = 0xadc6a4aebb8e506a0d9bef9012503a6319601711
    mem[2304] = 0xbd1b833e0aa6b5bbc0205b10f1e6c1f86ce00fa1
    mem[2336] = 0xeaf01dc42e75c9463afd3c2e5eda3fd2d1a347fe
    mem[2368] = 0x507025cb37865eff332a34a8ebfbf9c7be7f618a
    mem[2400] = 0x84d57f773e3eb4d371ed77834eb155060c01ad2e
    mem[2432] = 0x502421faa8773738aa01e1e458c59a748e4f8792
    mem[2464] = 0x232c132bb9a600bea9972fdf39fee89c459a9aeb
    mem[2496] = 0x8497dab50570f089c2ceecd23ad57248a5658ae
    sub_358bfba6.length = 38
    s = 0
    idx = 1312
    while 2528 > idx:
        sub_358bfba6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 38
    while sub_358bfba6.length > idx:
        sub_358bfba6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_358bfba6.length:
        if not sub_7b957fc1.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_358bfba6.length, sub_7b957fc1.length
        else:
            mem[2660] = address(sub_7b957fc1.field_0)
            idx = 2660
            s = 0
            while (32 * sub_7b957fc1.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7b957fc1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_358bfba6.length, sub_7b957fc1.length, mem[2660 len 32 * sub_7b957fc1.length]
    else:
        mem[2628] = address(sub_358bfba6.field_0)
        idx = 2628
        s = 0
        while (32 * sub_358bfba6.length) + 2628 > idx + 32:
            mem[idx + 32] = sub_358bfba6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_358bfba6.length) + 2628] = sub_7b957fc1.length
        if not sub_7b957fc1.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_358bfba6.length, data=mem[2628 len (32 * sub_358bfba6.length) + 32]), (32 * sub_358bfba6.length) + 96
        else:
            mem[(32 * sub_358bfba6.length) + 2660] = address(sub_7b957fc1.field_0)
            idx = (32 * sub_358bfba6.length) + 2660
            s = 0
            while (32 * sub_358bfba6.length) + (32 * sub_7b957fc1.length) + 2660 > idx + 32:
                mem[idx + 32] = sub_7b957fc1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.importAddresses(address[] rg1, address[] rg2) with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_358bfba6.length, data=mem[2628 len (32 * sub_358bfba6.length) + (32 * sub_7b957fc1.length) + 32]), (32 * sub_358bfba6.length) + 96
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
}



}
