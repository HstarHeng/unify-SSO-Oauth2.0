# PHP7.4 + Laravel8 + Mysql8 + Apache
## RBAC + SSO + Oauth2.0 
## 项目迁移步骤

1. **获取项目文件**  
   首先，你需要通过 Git 克隆获取你的 Laravel 项目的所有文件。
    ```bash
    git clone https://github.com/HstarHeng/unify-SSO-Oauth2.0.git
    ```

2. **安装依赖**  
   有五个项目子目录，system00是项目主入口，system_unify管理权限后台，其他是测试子系统。  
   在每个项目子目录中，运行 Composer 来安装所有的依赖，并运行node安装所有前端依赖（有些依赖可能没用到，但是没有清除，可以自己手动按需安装）。
    ```bash
    cd <your_project_directory>
    composer install
    npm install
    ```

3. **配置环境**  
   复制 `.env.example` 文件为 `.env`，并根据你的环境配置 `.env` 文件。配置数据库信息（必须），其他的按需更改。

4. **生成应用密钥**  
   运行以下命令生成新的应用密钥。
    ```bash
    php artisan key:generate
    ```

5. **配置 Apache**  
   在 Apache 的配置文件中，设置你的项目的公共目录为你的 Laravel 项目的 `public` 目录。  
   配置虚拟主机（可选）。
    ```apache
    <VirtualHost *:80>
        DocumentRoot "/path/to/your/project/public"
        ServerName yourdomain.com

        <Directory "/path/to/your/project/public">
            AllowOverride All
            Require all granted
            Allow from all
        </Directory>
    </VirtualHost>
    ```

6. **导入数据库**  
   导入你的 SQL 文件，该文件在每个项目子目录中。

7. **重启 Apache**  
   最后，重启 Apache 使配置生效。输入你的网址访问网站。