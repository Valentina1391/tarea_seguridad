package com.ejemplo.seguridad.config;

import com.ejemplo.seguridad.model.Rol;
import com.ejemplo.seguridad.model.Usuario;
import com.ejemplo.seguridad.repository.RolRepository;
import com.ejemplo.seguridad.repository.UsuarioRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.Set;

@Component
public class DataLoader implements CommandLineRunner {

    private final UsuarioRepository usuarioRepo;
    private final RolRepository rolRepo;
    private final PasswordEncoder encoder;

    public DataLoader(UsuarioRepository usuarioRepo, RolRepository rolRepo, PasswordEncoder encoder) {
        this.usuarioRepo = usuarioRepo;
        this.rolRepo = rolRepo;
        this.encoder = encoder;
    }

    @Override
    public void run(String... args) {
        Rol admin = obtenerRol("ROLE_ADMIN");
        Rol docente = obtenerRol("ROLE_DOCENTE");
        Rol creator = obtenerRol("ROLE_CREATOR");

        crearUsuario("admin", "admin123", Set.of(admin, creator));
        crearUsuario("docente", "docente123", Set.of(docente));
        crearUsuario("creador", "creador123", Set.of(creator));
        crearUsuario("maria", "maria123", Set.of(docente, creator));
    }

    private Rol obtenerRol(String nombre) {
        return rolRepo.findByNombre(nombre).orElseGet(() -> rolRepo.save(new Rol(nombre)));
    }

    private void crearUsuario(String username, String passwordPlano, Set<Rol> roles) {
        if (usuarioRepo.findByUsername(username).isEmpty()) {
            Usuario u = new Usuario();
            u.setUsername(username);
            u.setPassword(encoder.encode(passwordPlano)); // hash BCrypt
            u.setEnabled(true);
            u.setRoles(roles);
            usuarioRepo.save(u);
        }
    }
}
